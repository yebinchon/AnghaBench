
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dc390_srb {int SRBState; void* EndMessage; void* TargetStatus; } ;
struct dc390_acb {int dummy; } ;


 void* DC390_read8 (int ) ;
 int DC390_write8 (int ,int ) ;
 int MSG_ACCEPTED_CMD ;
 int SCSI_NOP0 ;
 int SRB_COMPLETED ;
 int ScsiCmd ;
 int ScsiFifo ;

__attribute__((used)) static void
dc390_Status_0( struct dc390_acb* pACB, struct dc390_srb* pSRB, u8 *psstatus)
{

    pSRB->TargetStatus = DC390_read8 (ScsiFifo);

    pSRB->EndMessage = DC390_read8 (ScsiFifo);

    *psstatus = SCSI_NOP0;
    pSRB->SRBState = SRB_COMPLETED;
    DC390_write8 (ScsiCmd, MSG_ACCEPTED_CMD);
}
