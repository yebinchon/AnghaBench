
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int * type; } ;


 int scsi_target_type ;

int scsi_is_target_device(const struct device *dev)
{
 return dev->type == &scsi_target_type;
}
