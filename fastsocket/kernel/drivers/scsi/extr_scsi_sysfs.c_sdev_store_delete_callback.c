
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int scsi_remove_device (int ) ;
 int to_scsi_device (struct device*) ;

__attribute__((used)) static void sdev_store_delete_callback(struct device *dev)
{
 scsi_remove_device(to_scsi_device(dev));
}
