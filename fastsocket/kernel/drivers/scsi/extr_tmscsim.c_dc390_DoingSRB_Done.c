
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int dummy; } ;
struct dc390_srb {struct scsi_cmnd* pcmd; struct dc390_srb* pNextSRB; } ;
struct dc390_dcb {int GoingSRBCnt; struct dc390_dcb* pNextDCB; scalar_t__ TagMask; struct dc390_srb* pGoingSRB; } ;
struct dc390_acb {struct dc390_dcb* pLinkDCB; } ;


 int dc390_Free_insert (struct dc390_acb*,struct dc390_srb*) ;

__attribute__((used)) static void
dc390_DoingSRB_Done(struct dc390_acb* pACB, struct scsi_cmnd *cmd)
{
    struct dc390_dcb *pDCB, *pdcb;
    struct dc390_srb *psrb, *psrb2;
    int i;
    struct scsi_cmnd *pcmd;

    pDCB = pACB->pLinkDCB;
    pdcb = pDCB;
    if (! pdcb) return;
    do
    {
 psrb = pdcb->pGoingSRB;
 for (i = 0; i < pdcb->GoingSRBCnt; i++)
 {
     psrb2 = psrb->pNextSRB;
     pcmd = psrb->pcmd;
     dc390_Free_insert (pACB, psrb);
     psrb = psrb2;
 }
 pdcb->GoingSRBCnt = 0;
 pdcb->pGoingSRB = ((void*)0);
 pdcb->TagMask = 0;
 pdcb = pdcb->pNextDCB;
    } while( pdcb != pDCB );
}
