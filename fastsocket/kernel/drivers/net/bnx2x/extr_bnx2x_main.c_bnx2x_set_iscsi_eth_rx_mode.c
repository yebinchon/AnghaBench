
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct bnx2x {int sp_state; } ;


 int BNX2X_ACCEPT_ALL_MULTICAST ;
 int BNX2X_ACCEPT_ANY_VLAN ;
 int BNX2X_ACCEPT_BROADCAST ;
 int BNX2X_ACCEPT_UNICAST ;
 int BNX2X_FILTER_ISCSI_ETH_START_SCHED ;
 int BNX2X_FILTER_ISCSI_ETH_STOP_SCHED ;
 int BNX2X_FILTER_RX_MODE_PENDING ;
 int BNX2X_ISCSI_ETH_CL_ID_IDX ;
 int RAMROD_RX ;
 int __set_bit (int ,unsigned long*) ;
 int bnx2x_cnic_eth_cl_id (struct bnx2x*,int ) ;
 int bnx2x_set_q_rx_mode (struct bnx2x*,int ,int ,unsigned long,int ,unsigned long) ;
 int clear_bit (int,int *) ;
 int set_bit (int,int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void bnx2x_set_iscsi_eth_rx_mode(struct bnx2x *bp, bool start)
{
 unsigned long accept_flags = 0, ramrod_flags = 0;
 u8 cl_id = bnx2x_cnic_eth_cl_id(bp, BNX2X_ISCSI_ETH_CL_ID_IDX);
 int sched_state = BNX2X_FILTER_ISCSI_ETH_STOP_SCHED;

 if (start) {






  __set_bit(BNX2X_ACCEPT_UNICAST, &accept_flags);
  __set_bit(BNX2X_ACCEPT_ALL_MULTICAST, &accept_flags);
  __set_bit(BNX2X_ACCEPT_BROADCAST, &accept_flags);
  __set_bit(BNX2X_ACCEPT_ANY_VLAN, &accept_flags);


  clear_bit(BNX2X_FILTER_ISCSI_ETH_STOP_SCHED, &bp->sp_state);

  sched_state = BNX2X_FILTER_ISCSI_ETH_START_SCHED;
 } else

  clear_bit(BNX2X_FILTER_ISCSI_ETH_START_SCHED, &bp->sp_state);

 if (test_bit(BNX2X_FILTER_RX_MODE_PENDING, &bp->sp_state))
  set_bit(sched_state, &bp->sp_state);
 else {
  __set_bit(RAMROD_RX, &ramrod_flags);
  bnx2x_set_q_rx_mode(bp, cl_id, 0, accept_flags, 0,
        ramrod_flags);
 }
}
