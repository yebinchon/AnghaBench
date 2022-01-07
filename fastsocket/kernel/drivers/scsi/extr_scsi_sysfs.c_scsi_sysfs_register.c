
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bus_register (int *) ;
 int bus_unregister (int *) ;
 int class_register (int *) ;
 int scsi_bus_type ;
 int sdev_class ;

int scsi_sysfs_register(void)
{
 int error;

 error = bus_register(&scsi_bus_type);
 if (!error) {
  error = class_register(&sdev_class);
  if (error)
   bus_unregister(&scsi_bus_type);
 }

 return error;
}
