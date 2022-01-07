
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270_view {int dummy; } ;
struct raw3270_request {int * callback_data; int callback; } ;
struct fs3270 {int wait; } ;


 int EACCES ;
 int fs3270_wake_up ;
 int fs3270_working (struct fs3270*) ;
 int raw3270_request_final (struct raw3270_request*) ;
 int raw3270_start (struct raw3270_view*,struct raw3270_request*) ;
 int wait_event (int ,int ) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static int
fs3270_do_io(struct raw3270_view *view, struct raw3270_request *rq)
{
 struct fs3270 *fp;
 int rc;

 fp = (struct fs3270 *) view;
 rq->callback = fs3270_wake_up;
 rq->callback_data = &fp->wait;

 do {
  if (!fs3270_working(fp)) {

   rc = wait_event_interruptible(fp->wait,
            fs3270_working(fp));
   if (rc != 0)
    break;
  }
  rc = raw3270_start(view, rq);
  if (rc == 0) {

   wait_event(fp->wait, raw3270_request_final(rq));
  }
 } while (rc == -EACCES);
 return rc;
}
