
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ushort ;
struct TYPE_4__ {int scsi_reset_wait; } ;
typedef TYPE_1__ ADV_DVC_VAR ;


 int ADV_TRUE ;
 int ASC_SCSI_RESET_HOLD_TIME_US ;
 int AdvSendIdleCmd (TYPE_1__*,int ,long) ;
 scalar_t__ IDLE_CMD_SCSI_RESET_END ;
 scalar_t__ IDLE_CMD_SCSI_RESET_START ;
 int mdelay (int) ;
 int udelay (int ) ;

__attribute__((used)) static int AdvResetSB(ADV_DVC_VAR *asc_dvc)
{
 int status;





 status = AdvSendIdleCmd(asc_dvc, (ushort)IDLE_CMD_SCSI_RESET_START, 0L);
 if (status != ADV_TRUE) {
  return status;
 }







 udelay(ASC_SCSI_RESET_HOLD_TIME_US);





 status = AdvSendIdleCmd(asc_dvc, (ushort)IDLE_CMD_SCSI_RESET_END, 0L);
 if (status != ADV_TRUE) {
  return status;
 }

 mdelay(asc_dvc->scsi_reset_wait * 1000);

 return status;
}
