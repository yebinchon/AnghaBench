
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc390_dcb {int CtrlR4; int CtrlR3; int SyncOffset; int SyncPeriod; } ;
struct dc390_acb {int dummy; } ;


 int CtrlReg3 ;
 int CtrlReg4 ;
 int DC390_write8 (int ,int ) ;
 int Sync_Offset ;
 int Sync_Period ;
 int dc390_SetXferRate (struct dc390_acb*,struct dc390_dcb*) ;

__attribute__((used)) static void __inline__
dc390_reprog (struct dc390_acb* pACB, struct dc390_dcb* pDCB)
{
  DC390_write8 (Sync_Period, pDCB->SyncPeriod);
  DC390_write8 (Sync_Offset, pDCB->SyncOffset);
  DC390_write8 (CtrlReg3, pDCB->CtrlR3);
  DC390_write8 (CtrlReg4, pDCB->CtrlR4);
  dc390_SetXferRate (pACB, pDCB);
}
