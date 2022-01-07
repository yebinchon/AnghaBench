
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int const rx_mode; } ;


 int BNX2X_ACCEPT_ALL_MULTICAST ;
 int BNX2X_ACCEPT_ALL_UNICAST ;
 int BNX2X_ACCEPT_ANY_VLAN ;
 int BNX2X_ACCEPT_BROADCAST ;
 int BNX2X_ACCEPT_MULTICAST ;
 int BNX2X_ACCEPT_UNICAST ;
 int BNX2X_ACCEPT_UNMATCHED ;
 int BNX2X_ERR (char*,int) ;




 int EINVAL ;
 int IS_MF_SI (struct bnx2x*) ;
 int __set_bit (int ,unsigned long*) ;

__attribute__((used)) static int bnx2x_fill_accept_flags(struct bnx2x *bp, u32 rx_mode,
       unsigned long *rx_accept_flags,
       unsigned long *tx_accept_flags)
{

 *rx_accept_flags = 0;
 *tx_accept_flags = 0;

 switch (rx_mode) {
 case 130:




  break;
 case 129:
  __set_bit(BNX2X_ACCEPT_UNICAST, rx_accept_flags);
  __set_bit(BNX2X_ACCEPT_MULTICAST, rx_accept_flags);
  __set_bit(BNX2X_ACCEPT_BROADCAST, rx_accept_flags);


  __set_bit(BNX2X_ACCEPT_UNICAST, tx_accept_flags);
  __set_bit(BNX2X_ACCEPT_MULTICAST, tx_accept_flags);
  __set_bit(BNX2X_ACCEPT_BROADCAST, tx_accept_flags);

  break;
 case 131:
  __set_bit(BNX2X_ACCEPT_UNICAST, rx_accept_flags);
  __set_bit(BNX2X_ACCEPT_ALL_MULTICAST, rx_accept_flags);
  __set_bit(BNX2X_ACCEPT_BROADCAST, rx_accept_flags);


  __set_bit(BNX2X_ACCEPT_UNICAST, tx_accept_flags);
  __set_bit(BNX2X_ACCEPT_ALL_MULTICAST, tx_accept_flags);
  __set_bit(BNX2X_ACCEPT_BROADCAST, tx_accept_flags);

  break;
 case 128:




  __set_bit(BNX2X_ACCEPT_UNMATCHED, rx_accept_flags);
  __set_bit(BNX2X_ACCEPT_UNICAST, rx_accept_flags);
  __set_bit(BNX2X_ACCEPT_ALL_MULTICAST, rx_accept_flags);
  __set_bit(BNX2X_ACCEPT_BROADCAST, rx_accept_flags);


  __set_bit(BNX2X_ACCEPT_ALL_MULTICAST, tx_accept_flags);
  __set_bit(BNX2X_ACCEPT_BROADCAST, tx_accept_flags);

  if (IS_MF_SI(bp))
   __set_bit(BNX2X_ACCEPT_ALL_UNICAST, tx_accept_flags);
  else
   __set_bit(BNX2X_ACCEPT_UNICAST, tx_accept_flags);

  break;
 default:
  BNX2X_ERR("Unknown rx_mode: %d\n", rx_mode);
  return -EINVAL;
 }


 if (bp->rx_mode != 130) {
  __set_bit(BNX2X_ACCEPT_ANY_VLAN, rx_accept_flags);
  __set_bit(BNX2X_ACCEPT_ANY_VLAN, tx_accept_flags);
 }

 return 0;
}
