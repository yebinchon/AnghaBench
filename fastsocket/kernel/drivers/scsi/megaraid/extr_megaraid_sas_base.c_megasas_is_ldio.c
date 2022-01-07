
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int* cmnd; } ;


 int MEGASAS_IS_LOGICAL (struct scsi_cmnd*) ;
inline int megasas_is_ldio(struct scsi_cmnd *cmd)
{
 if (!MEGASAS_IS_LOGICAL(cmd))
  return 0;
 switch (cmd->cmnd[0]) {
 case 135:
 case 131:
 case 134:
 case 130:
 case 132:
 case 128:
 case 133:
 case 129:
  return 1;
 default:
  return 0;
 }
}
