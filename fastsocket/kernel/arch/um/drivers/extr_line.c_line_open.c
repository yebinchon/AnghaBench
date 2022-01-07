
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ws_col; int ws_row; } ;
struct tty_struct {size_t index; int count; TYPE_1__ winsize; struct line* driver_data; } ;
struct line {int sigio; int count_lock; int chan_list; int task; struct tty_struct* tty; int valid; } ;


 int ENODEV ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int chan_enable_winch (int *,struct tty_struct*) ;
 int chan_window_size (int *,int *,int *) ;
 int enable_chan (struct line*) ;
 int line_timer_cb ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int line_open(struct line *lines, struct tty_struct *tty)
{
 struct line *line = &lines[tty->index];
 int err = -ENODEV;

 spin_lock(&line->count_lock);
 if (!line->valid)
  goto out_unlock;

 err = 0;
 if (tty->count > 1)
  goto out_unlock;

 spin_unlock(&line->count_lock);

 tty->driver_data = line;
 line->tty = tty;

 err = enable_chan(line);
 if (err)
  return err;

 INIT_DELAYED_WORK(&line->task, line_timer_cb);

 if (!line->sigio) {
  chan_enable_winch(&line->chan_list, tty);
  line->sigio = 1;
 }

 chan_window_size(&line->chan_list, &tty->winsize.ws_row,
    &tty->winsize.ws_col);

 return err;

out_unlock:
 spin_unlock(&line->count_lock);
 return err;
}
