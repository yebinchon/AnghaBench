
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {int mem_lock; int ccw_chunks; } ;
struct dasd_ccw_req {int dummy; } ;


 int dasd_free_chunk (int *,struct dasd_ccw_req*) ;
 int dasd_put_device (struct dasd_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void dasd_sfree_request(struct dasd_ccw_req *cqr, struct dasd_device *device)
{
 unsigned long flags;

 spin_lock_irqsave(&device->mem_lock, flags);
 dasd_free_chunk(&device->ccw_chunks, cqr);
 spin_unlock_irqrestore(&device->mem_lock, flags);
 dasd_put_device(device);
}
