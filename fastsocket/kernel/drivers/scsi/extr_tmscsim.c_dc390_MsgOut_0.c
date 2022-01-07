
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dc390_srb {int SRBState; } ;
struct dc390_acb {int dummy; } ;


 int SCSI_NOP0 ;
 int SRB_ABORT_SENT ;
 int SRB_UNEXPECT_RESEL ;

__attribute__((used)) static void
dc390_MsgOut_0( struct dc390_acb* pACB, struct dc390_srb* pSRB, u8 *psstatus)
{
    if( pSRB->SRBState & (SRB_UNEXPECT_RESEL+SRB_ABORT_SENT) )
 *psstatus = SCSI_NOP0;

}
