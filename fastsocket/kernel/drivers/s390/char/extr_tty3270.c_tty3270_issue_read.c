
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty3270 {int read; int view; TYPE_1__* input; } ;
struct raw3270_request {struct tty3270* callback_data; int callback; } ;
struct TYPE_2__ {int len; int string; } ;


 int TC_READMOD ;
 int raw3270_request_reset (struct raw3270_request*) ;
 int raw3270_request_set_cmd (struct raw3270_request*,int ) ;
 int raw3270_request_set_data (struct raw3270_request*,int ,int ) ;
 int raw3270_start (int *,struct raw3270_request*) ;
 int raw3270_start_irq (int *,struct raw3270_request*) ;
 int tty3270_read_callback ;
 struct raw3270_request* xchg (int *,struct raw3270_request*) ;

__attribute__((used)) static void
tty3270_issue_read(struct tty3270 *tp, int lock)
{
 struct raw3270_request *rrq;
 int rc;

 rrq = xchg(&tp->read, 0);
 if (!rrq)

  return;
 rrq->callback = tty3270_read_callback;
 rrq->callback_data = tp;
 raw3270_request_set_cmd(rrq, TC_READMOD);
 raw3270_request_set_data(rrq, tp->input->string, tp->input->len);

 if (lock) {
  rc = raw3270_start(&tp->view, rrq);
 } else
  rc = raw3270_start_irq(&tp->view, rrq);
 if (rc) {
  raw3270_request_reset(rrq);
  xchg(&tp->read, rrq);
 }
}
