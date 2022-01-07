
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct scsi_cmnd {TYPE_2__* device; } ;
struct dc390_acb {size_t AdapterIndex; int ACBFlag; int * pActiveDCB; scalar_t__ last_reset; } ;
struct TYPE_4__ {TYPE_1__* host; } ;
struct TYPE_3__ {int host_lock; scalar_t__ hostdata; } ;


 int CLEAR_FIFO_CMD ;
 int CtrlReg1 ;
 int DC390_read8 (int ) ;
 int DC390_write8 (int ,int) ;
 int DIS_INT_ON_SCSI_RST ;
 size_t EE_DELAY ;
 int HZ ;
 int INT_Status ;
 int RESET_DEV ;
 int SUCCESS ;
 int ScsiCmd ;
 int dc390_DoingSRB_Done (struct dc390_acb*,struct scsi_cmnd*) ;
 int dc390_ResetDevParam (struct dc390_acb*) ;
 int dc390_ResetSCSIBus (struct dc390_acb*) ;
 int** dc390_eepromBuf ;
 scalar_t__ jiffies ;
 int mdelay (int) ;
 int spin_lock_irq (int ) ;
 int spin_unlock_irq (int ) ;

__attribute__((used)) static int DC390_bus_reset (struct scsi_cmnd *cmd)
{
 struct dc390_acb* pACB = (struct dc390_acb*) cmd->device->host->hostdata;
 u8 bval;

 spin_lock_irq(cmd->device->host->host_lock);

 bval = DC390_read8(CtrlReg1) | DIS_INT_ON_SCSI_RST;
 DC390_write8(CtrlReg1, bval);

 pACB->ACBFlag |= RESET_DEV;
 dc390_ResetSCSIBus(pACB);

 dc390_ResetDevParam(pACB);
 mdelay(1);
 pACB->last_reset = jiffies + 3*HZ/2
  + HZ * dc390_eepromBuf[pACB->AdapterIndex][EE_DELAY];

 DC390_write8(ScsiCmd, CLEAR_FIFO_CMD);
 DC390_read8(INT_Status);

 dc390_DoingSRB_Done(pACB, cmd);

 pACB->pActiveDCB = ((void*)0);
 pACB->ACBFlag = 0;

 bval = DC390_read8(CtrlReg1) & ~DIS_INT_ON_SCSI_RST;
 DC390_write8(CtrlReg1, bval);

 spin_unlock_irq(cmd->device->host->host_lock);

 return SUCCESS;
}
