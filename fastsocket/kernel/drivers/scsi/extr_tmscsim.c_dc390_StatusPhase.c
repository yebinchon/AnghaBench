
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dc390_srb {int SRBState; } ;
struct dc390_acb {int dummy; } ;


 int CLEAR_FIFO_CMD ;
 int DC390_write8 (int ,int ) ;
 int INITIATOR_CMD_CMPLTE ;
 int SRB_STATUS ;
 int ScsiCmd ;

__attribute__((used)) static void
dc390_StatusPhase( struct dc390_acb* pACB, struct dc390_srb* pSRB, u8 *psstatus)
{
    DC390_write8 (ScsiCmd, CLEAR_FIFO_CMD);
    pSRB->SRBState = SRB_STATUS;
    DC390_write8 (ScsiCmd, INITIATOR_CMD_CMPLTE);

}
