
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct dc390_dcb {scalar_t__ TargetID; struct dc390_dcb* pNextDCB; int SyncMode; int CtrlR4; int CtrlR3; int SyncOffset; int SyncPeriod; int TargetLUN; } ;
struct dc390_acb {scalar_t__ DCBCnt; struct dc390_dcb* pLinkDCB; int scan_devices; } ;



__attribute__((used)) static void
dc390_SetXferRate( struct dc390_acb* pACB, struct dc390_dcb* pDCB )
{
    u8 bval, i, cnt;
    struct dc390_dcb* ptr;

    if( !(pDCB->TargetLUN) )
    {
 if( !pACB->scan_devices )
 {
     ptr = pACB->pLinkDCB;
     cnt = pACB->DCBCnt;
     bval = pDCB->TargetID;
     for(i=0; i<cnt; i++)
     {
  if( ptr->TargetID == bval )
  {
      ptr->SyncPeriod = pDCB->SyncPeriod;
      ptr->SyncOffset = pDCB->SyncOffset;
      ptr->CtrlR3 = pDCB->CtrlR3;
      ptr->CtrlR4 = pDCB->CtrlR4;
      ptr->SyncMode = pDCB->SyncMode;
  }
  ptr = ptr->pNextDCB;
     }
 }
    }
    return;
}
