
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_scsi_cmd {int dummy; } ;
struct ub_lun {int* cmda; struct ub_scsi_cmd* cmdv; } ;



__attribute__((used)) static struct ub_scsi_cmd *ub_get_cmd(struct ub_lun *lun)
{
 struct ub_scsi_cmd *ret;

 if (lun->cmda[0])
  return ((void*)0);
 ret = &lun->cmdv[0];
 lun->cmda[0] = 1;
 return ret;
}
