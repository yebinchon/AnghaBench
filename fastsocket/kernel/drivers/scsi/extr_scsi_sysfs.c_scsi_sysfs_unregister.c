
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_unregister (int *) ;
 int class_unregister (int *) ;
 int scsi_bus_type ;
 int sdev_class ;

void scsi_sysfs_unregister(void)
{
 class_unregister(&sdev_class);
 bus_unregister(&scsi_bus_type);
}
