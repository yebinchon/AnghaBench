
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct can_frame {int can_id; scalar_t__ data; int can_dlc; } ;
struct at91_priv {int dummy; } ;


 unsigned int AT91_MB_RX_LAST ;
 int AT91_MDH (unsigned int) ;
 int AT91_MDL (unsigned int) ;
 int AT91_MID (unsigned int) ;
 int AT91_MID_MIDE ;
 int AT91_MSR (unsigned int) ;
 int AT91_MSR_MMI ;
 int AT91_MSR_MRTR ;
 int CAN_EFF_FLAG ;
 int CAN_EFF_MASK ;
 int CAN_RTR_FLAG ;
 int CAN_SFF_MASK ;
 int __u8 ;
 int at91_read (struct at91_priv const*,int ) ;
 int at91_rx_overflow_err (struct net_device*) ;
 int min_t (int ,int,int) ;
 struct at91_priv* netdev_priv (struct net_device*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void at91_read_mb(struct net_device *dev, unsigned int mb,
  struct can_frame *cf)
{
 const struct at91_priv *priv = netdev_priv(dev);
 u32 reg_msr, reg_mid;

 reg_mid = at91_read(priv, AT91_MID(mb));
 if (reg_mid & AT91_MID_MIDE)
  cf->can_id = ((reg_mid >> 0) & CAN_EFF_MASK) | CAN_EFF_FLAG;
 else
  cf->can_id = (reg_mid >> 18) & CAN_SFF_MASK;

 reg_msr = at91_read(priv, AT91_MSR(mb));
 if (reg_msr & AT91_MSR_MRTR)
  cf->can_id |= CAN_RTR_FLAG;
 cf->can_dlc = min_t(__u8, (reg_msr >> 16) & 0xf, 8);

 *(u32 *)(cf->data + 0) = at91_read(priv, AT91_MDL(mb));
 *(u32 *)(cf->data + 4) = at91_read(priv, AT91_MDH(mb));

 if (unlikely(mb == AT91_MB_RX_LAST && reg_msr & AT91_MSR_MMI))
  at91_rx_overflow_err(dev);
}
