
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctlr_info {int dev; } ;


 int device_del (int *) ;
 int put_device (int *) ;

__attribute__((used)) static void cciss_destroy_hba_sysfs_entry(struct ctlr_info *h)
{
 device_del(&h->dev);
 put_device(&h->dev);
}
