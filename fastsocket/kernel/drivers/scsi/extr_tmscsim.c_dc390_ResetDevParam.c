
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc390_dcb {int CtrlR4; struct dc390_dcb* pNextDCB; int CtrlR3; scalar_t__ TagMask; scalar_t__ SyncOffset; scalar_t__ SyncPeriod; int SyncMode; } ;
struct dc390_acb {int glitch_cfg; int ACBFlag; struct dc390_dcb* pLinkDCB; } ;


 int CTRL4_RESERVED ;
 int FAST_CLK ;
 int NEGATE_REQACK ;
 int NEGATE_REQACKDATA ;
 int RESET_DETECT ;
 int RESET_DEV ;
 int RESET_DONE ;
 int SYNC_NEGO_DONE ;

__attribute__((used)) static void dc390_ResetDevParam( struct dc390_acb* pACB )
{
    struct dc390_dcb *pDCB, *pdcb;

    pDCB = pACB->pLinkDCB;
    if (! pDCB) return;
    pdcb = pDCB;
    do
    {
 pDCB->SyncMode &= ~SYNC_NEGO_DONE;
 pDCB->SyncPeriod = 0;
 pDCB->SyncOffset = 0;
 pDCB->TagMask = 0;
 pDCB->CtrlR3 = FAST_CLK;
 pDCB->CtrlR4 &= NEGATE_REQACKDATA | CTRL4_RESERVED | NEGATE_REQACK;
 pDCB->CtrlR4 |= pACB->glitch_cfg;
 pDCB = pDCB->pNextDCB;
    }
    while( pdcb != pDCB );
    pACB->ACBFlag &= ~(RESET_DEV | RESET_DONE | RESET_DETECT);

}
