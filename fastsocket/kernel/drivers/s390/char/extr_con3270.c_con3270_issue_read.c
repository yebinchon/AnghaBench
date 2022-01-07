
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct raw3270_request {struct con3270* callback_data; int callback; } ;
struct con3270 {int view; TYPE_1__* input; int read; } ;
struct TYPE_2__ {int len; int string; } ;


 int TC_READMOD ;
 int con3270_read_callback ;
 int raw3270_request_reset (struct raw3270_request*) ;
 int raw3270_request_set_cmd (struct raw3270_request*,int ) ;
 int raw3270_request_set_data (struct raw3270_request*,int ,int ) ;
 int raw3270_start_irq (int *,struct raw3270_request*) ;
 struct raw3270_request* xchg (int *,int ) ;

__attribute__((used)) static void
con3270_issue_read(struct con3270 *cp)
{
 struct raw3270_request *rrq;
 int rc;

 rrq = xchg(&cp->read, 0);
 if (!rrq)

  return;
 rrq->callback = con3270_read_callback;
 rrq->callback_data = cp;
 raw3270_request_set_cmd(rrq, TC_READMOD);
 raw3270_request_set_data(rrq, cp->input->string, cp->input->len);

 rc = raw3270_start_irq(&cp->view, rrq);
 if (rc)
  raw3270_request_reset(rrq);
}
