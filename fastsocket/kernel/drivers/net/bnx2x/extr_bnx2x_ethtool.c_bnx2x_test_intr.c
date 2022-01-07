
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2x_queue_state_params {int ramrod_flags; int cmd; int * q_obj; int * member_0; } ;
struct bnx2x {TYPE_1__* sp_objs; int dev; } ;
struct TYPE_2__ {int q_obj; } ;


 int BNX2X_MSG_ETHTOOL ;
 int BNX2X_MSG_NVM ;
 int BNX2X_Q_CMD_EMPTY ;
 int DP (int,char*) ;
 int ENODEV ;
 int RAMROD_COMP_WAIT ;
 int __set_bit (int ,int *) ;
 int bnx2x_queue_state_change (struct bnx2x*,struct bnx2x_queue_state_params*) ;
 int netif_running (int ) ;

__attribute__((used)) static int bnx2x_test_intr(struct bnx2x *bp)
{
 struct bnx2x_queue_state_params params = {((void*)0)};

 if (!netif_running(bp->dev)) {
  DP(BNX2X_MSG_ETHTOOL | BNX2X_MSG_NVM,
     "cannot access eeprom when the interface is down\n");
  return -ENODEV;
 }

 params.q_obj = &bp->sp_objs->q_obj;
 params.cmd = BNX2X_Q_CMD_EMPTY;

 __set_bit(RAMROD_COMP_WAIT, &params.ramrod_flags);

 return bnx2x_queue_state_change(bp, &params);
}
