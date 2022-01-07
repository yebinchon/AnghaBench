
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dc390_srb {int MsgCnt; TYPE_1__* pSRBDCB; int * MsgOutBuf; } ;
struct dc390_acb {int dummy; } ;
struct TYPE_2__ {int DCBFlag; } ;


 int ABORT ;
 int ABORT_DEV_ ;
 int DC390_ENABLE_MSGOUT ;

__attribute__((used)) static void
dc390_EnableMsgOut_Abort ( struct dc390_acb* pACB, struct dc390_srb* pSRB )
{
    pSRB->MsgOutBuf[0] = ABORT;
    pSRB->MsgCnt = 1; DC390_ENABLE_MSGOUT;
    pSRB->pSRBDCB->DCBFlag &= ~ABORT_DEV_;
}
