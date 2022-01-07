
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dc390_acb {TYPE_2__* pActiveDCB; } ;
struct TYPE_4__ {TYPE_1__* pActiveSRB; } ;
struct TYPE_3__ {int SRBState; } ;


 int CLEAR_FIFO_CMD ;
 int DC390_write8 (int ,int ) ;
 int SRB_MSGOUT ;
 int SRB_START_ ;
 int ScsiCmd ;

__attribute__((used)) static void __inline__
dc390_InvalidCmd(struct dc390_acb* pACB)
{
 if (pACB->pActiveDCB->pActiveSRB->SRBState & (SRB_START_ | SRB_MSGOUT))
  DC390_write8(ScsiCmd, CLEAR_FIFO_CMD);
}
