
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r592_device {int io_thread_lock; int io_thread; scalar_t__ req; } ;
struct memstick_host {int dummy; } ;


 int dbg_verbose (char*) ;
 struct r592_device* memstick_priv (struct memstick_host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ wake_up_process (int ) ;

__attribute__((used)) static void r592_submit_req(struct memstick_host *host)
{
 struct r592_device *dev = memstick_priv(host);
 unsigned long flags;

 if (dev->req)
  return;

 spin_lock_irqsave(&dev->io_thread_lock, flags);
 if (wake_up_process(dev->io_thread))
  dbg_verbose("IO thread woken to process requests");
 spin_unlock_irqrestore(&dev->io_thread_lock, flags);
}
