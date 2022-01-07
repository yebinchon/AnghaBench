
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct raw3270_view {TYPE_1__* dev; } ;
struct raw3270_request {int rc; int * callback_data; int * callback; } ;
struct raw3270 {int dummy; } ;
struct TYPE_2__ {int cdev; } ;


 int ERESTARTSYS ;
 int __raw3270_start (struct raw3270*,struct raw3270_view*,struct raw3270_request*) ;
 int barrier () ;
 int get_ccwdev_lock (int ) ;
 int raw3270_halt_io (TYPE_1__*,struct raw3270_request*) ;
 scalar_t__ raw3270_registered ;
 int raw3270_request_final (struct raw3270_request*) ;
 int raw3270_wait_queue ;
 int * raw3270_wake_init ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int wait_cons_dev () ;
 int wait_event (int ,int ) ;
 int wait_event_interruptible (int ,int ) ;

__attribute__((used)) static int
raw3270_start_init(struct raw3270 *rp, struct raw3270_view *view,
     struct raw3270_request *rq)
{
 unsigned long flags;
 int rc;
 rq->callback = raw3270_wake_init;
 rq->callback_data = &raw3270_wait_queue;
 spin_lock_irqsave(get_ccwdev_lock(view->dev->cdev), flags);
 rc = __raw3270_start(rp, view, rq);
 spin_unlock_irqrestore(get_ccwdev_lock(view->dev->cdev), flags);
 if (rc)
  return rc;

 rc = wait_event_interruptible(raw3270_wait_queue,
          raw3270_request_final(rq));
 if (rc == -ERESTARTSYS) {
  raw3270_halt_io(view->dev, rq);

  wait_event(raw3270_wait_queue, raw3270_request_final(rq));
  return -ERESTARTSYS;
 }
 return rq->rc;
}
