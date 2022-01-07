
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int iop_base; } ;
typedef int PortAddr ;
typedef TYPE_1__ ASC_DVC_VAR ;


 int AscGetChipStatus (int ) ;
 int AscIsChipHalted (int ) ;
 int AscSetChipControl (int ,int) ;
 int AscSetChipIH (int ,int ) ;
 int AscSetChipStatus (int ,int ) ;
 int AscStopChip (int ) ;
 int CC_CHIP_RESET ;
 int CC_HALT ;
 int CC_SCSI_RESET ;
 int CIW_CLR_SCSI_RESET_INT ;
 int CSW_SCSI_RESET_ACTIVE ;
 int INS_HALT ;
 int INS_RFLAG_WTM ;
 int mdelay (int) ;
 int udelay (int) ;

__attribute__((used)) static int AscResetChipAndScsiBus(ASC_DVC_VAR *asc_dvc)
{
 PortAddr iop_base;
 int i = 10;

 iop_base = asc_dvc->iop_base;
 while ((AscGetChipStatus(iop_base) & CSW_SCSI_RESET_ACTIVE)
        && (i-- > 0)) {
  mdelay(100);
 }
 AscStopChip(iop_base);
 AscSetChipControl(iop_base, CC_CHIP_RESET | CC_SCSI_RESET | CC_HALT);
 udelay(60);
 AscSetChipIH(iop_base, INS_RFLAG_WTM);
 AscSetChipIH(iop_base, INS_HALT);
 AscSetChipControl(iop_base, CC_CHIP_RESET | CC_HALT);
 AscSetChipControl(iop_base, CC_HALT);
 mdelay(200);
 AscSetChipStatus(iop_base, CIW_CLR_SCSI_RESET_INT);
 AscSetChipStatus(iop_base, 0);
 return (AscIsChipHalted(iop_base));
}
