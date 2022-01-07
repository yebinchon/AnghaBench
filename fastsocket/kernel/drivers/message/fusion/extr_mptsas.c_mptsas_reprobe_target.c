
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_target {int dummy; } ;


 int mptsas_reprobe_lun ;
 int starget_for_each_device (struct scsi_target*,void*,int ) ;

__attribute__((used)) static void
mptsas_reprobe_target(struct scsi_target *starget, int uld_attach)
{
 starget_for_each_device(starget, uld_attach ? (void *)1 : ((void*)0),
   mptsas_reprobe_lun);
}
