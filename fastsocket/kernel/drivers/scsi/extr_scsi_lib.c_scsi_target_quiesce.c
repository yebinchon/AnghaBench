
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {int dummy; } ;


 int device_quiesce_fn ;
 int starget_for_each_device (struct scsi_target*,int *,int ) ;

void
scsi_target_quiesce(struct scsi_target *starget)
{
 starget_for_each_device(starget, ((void*)0), device_quiesce_fn);
}
