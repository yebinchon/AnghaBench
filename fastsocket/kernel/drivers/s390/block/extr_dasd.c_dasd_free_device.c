
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dasd_device {scalar_t__ ccw_mem; scalar_t__ erp_mem; struct dasd_device* private; } ;


 int free_page (unsigned long) ;
 int free_pages (unsigned long,int) ;
 int kfree (struct dasd_device*) ;

void dasd_free_device(struct dasd_device *device)
{
 kfree(device->private);
 free_page((unsigned long) device->erp_mem);
 free_pages((unsigned long) device->ccw_mem, 1);
 kfree(device);
}
