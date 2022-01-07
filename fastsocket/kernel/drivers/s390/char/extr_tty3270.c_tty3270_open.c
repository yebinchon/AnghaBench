
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ws_row; int ws_col; } ;
struct tty_struct {int count; scalar_t__ index; TYPE_1__ winsize; struct tty3270* driver_data; scalar_t__ low_latency; } ;
struct TYPE_8__ {int rows; int ascebc; int cols; } ;
struct tty3270 {int rcl_max; TYPE_2__ view; TYPE_6__* kbd; struct tty_struct* tty; scalar_t__ read; int readlet; int timer; int rcl_lines; int update; int lines; int inattr; } ;
struct file {int dummy; } ;
struct TYPE_9__ {int * fn_handler; struct tty_struct* tty; } ;


 int ENODEV ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct tty3270*) ;
 size_t KVAL (int ) ;
 int K_CONS ;
 int K_INCRCONSOLE ;
 int K_SCROLLBACK ;
 int K_SCROLLFORW ;
 int PTR_ERR (struct tty3270*) ;
 scalar_t__ RAW3270_FIRSTMINOR ;
 int TF_INPUT ;
 int kbd_ascebc (TYPE_6__*,int ) ;
 int raw3270_activate_view (TYPE_2__*) ;
 int raw3270_add_view (TYPE_2__*,int *,scalar_t__) ;
 int raw3270_del_view (TYPE_2__*) ;
 scalar_t__ raw3270_find_view (int *,scalar_t__) ;
 int raw3270_put_view (TYPE_2__*) ;
 int setup_timer (int *,void (*) (unsigned long),unsigned long) ;
 int tasklet_init (int *,void (*) (unsigned long),unsigned long) ;
 int tty3270_alloc_screen (struct tty3270*) ;
 struct tty3270* tty3270_alloc_view () ;
 int tty3270_blank_line (struct tty3270*) ;
 int tty3270_create_prompt (struct tty3270*) ;
 int tty3270_create_status (struct tty3270*) ;
 int tty3270_exit_tty ;
 int tty3270_fn ;
 int tty3270_free_view (struct tty3270*) ;
 scalar_t__ tty3270_max_index ;
 int tty3270_rcl_backward ;
 scalar_t__ tty3270_read_tasklet ;
 int tty3270_scroll_backward ;
 int tty3270_scroll_forward ;
 scalar_t__ tty3270_update ;
 int tty3270_update_status (struct tty3270*) ;

__attribute__((used)) static int
tty3270_open(struct tty_struct *tty, struct file * filp)
{
 struct tty3270 *tp;
 int i, rc;

 if (tty->count > 1)
  return 0;

 tp = (struct tty3270 *)
  raw3270_find_view(&tty3270_fn,
      tty->index + RAW3270_FIRSTMINOR);
 if (!IS_ERR(tp)) {
  tty->driver_data = tp;
  tty->winsize.ws_row = tp->view.rows - 2;
  tty->winsize.ws_col = tp->view.cols;
  tty->low_latency = 0;
  tp->tty = tty;
  tp->kbd->tty = tty;
  tp->inattr = TF_INPUT;
  return 0;
 }
 if (tty3270_max_index < tty->index + 1)
  tty3270_max_index = tty->index + 1;


 if (PTR_ERR(tp) == -ENODEV)
  return -ENODEV;


 tp = tty3270_alloc_view();
 if (IS_ERR(tp))
  return PTR_ERR(tp);

 INIT_LIST_HEAD(&tp->lines);
 INIT_LIST_HEAD(&tp->update);
 INIT_LIST_HEAD(&tp->rcl_lines);
 tp->rcl_max = 20;
 setup_timer(&tp->timer, (void (*)(unsigned long)) tty3270_update,
      (unsigned long) tp);
 tasklet_init(&tp->readlet,
       (void (*)(unsigned long)) tty3270_read_tasklet,
       (unsigned long) tp->read);

 rc = raw3270_add_view(&tp->view, &tty3270_fn,
         tty->index + RAW3270_FIRSTMINOR);
 if (rc) {
  tty3270_free_view(tp);
  return rc;
 }

 rc = tty3270_alloc_screen(tp);
 if (rc) {
  raw3270_put_view(&tp->view);
  raw3270_del_view(&tp->view);
  return rc;
 }

 tp->tty = tty;
 tty->low_latency = 0;
 tty->driver_data = tp;
 tty->winsize.ws_row = tp->view.rows - 2;
 tty->winsize.ws_col = tp->view.cols;

 tty3270_create_prompt(tp);
 tty3270_create_status(tp);
 tty3270_update_status(tp);


 for (i = 0; i < tp->view.rows - 2; i++)
  tty3270_blank_line(tp);

 tp->kbd->tty = tty;
 tp->kbd->fn_handler[KVAL(K_INCRCONSOLE)] = tty3270_exit_tty;
 tp->kbd->fn_handler[KVAL(K_SCROLLBACK)] = tty3270_scroll_backward;
 tp->kbd->fn_handler[KVAL(K_SCROLLFORW)] = tty3270_scroll_forward;
 tp->kbd->fn_handler[KVAL(K_CONS)] = tty3270_rcl_backward;
 kbd_ascebc(tp->kbd, tp->view.ascebc);

 raw3270_activate_view(&tp->view);
 return 0;
}
