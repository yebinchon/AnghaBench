
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adb_request {int complete; } ;


 int BUG_ON (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int macii_poll () ;
 int macii_write (struct adb_request*) ;
 int request_is_queued (struct adb_request*) ;

__attribute__((used)) static int macii_send_request(struct adb_request *req, int sync)
{
 int err;
 unsigned long flags;

 BUG_ON(request_is_queued(req));

 local_irq_save(flags);
 err = macii_write(req);
 local_irq_restore(flags);

 if (!err && sync) {
  while (!req->complete) {
   macii_poll();
  }
  BUG_ON(request_is_queued(req));
 }

 return err;
}
