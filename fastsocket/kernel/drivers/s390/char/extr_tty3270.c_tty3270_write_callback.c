
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty3270 {int write; int update_flags; } ;
struct raw3270_request {scalar_t__ rc; scalar_t__ view; } ;


 int TTY_UPDATE_ALL ;
 int raw3270_request_reset (struct raw3270_request*) ;
 int tty3270_set_timer (struct tty3270*,int) ;
 int xchg (int *,struct raw3270_request*) ;

__attribute__((used)) static void
tty3270_write_callback(struct raw3270_request *rq, void *data)
{
 struct tty3270 *tp;

 tp = (struct tty3270 *) rq->view;
 if (rq->rc != 0) {

  tp->update_flags = TTY_UPDATE_ALL;
  tty3270_set_timer(tp, 1);
 }
 raw3270_request_reset(rq);
 xchg(&tp->write, rq);
}
