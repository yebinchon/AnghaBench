
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 unsigned int const FIF_ALLMULTI ;
 unsigned int const FIF_CONTROL ;
 unsigned int const FIF_FCSFAIL ;
 unsigned int const FIF_PLCPFAIL ;
 unsigned int const FIF_PROMISC_IN_BSS ;
 unsigned int const FIF_PSPOLL ;
 int RX_FILTER_CFG ;
 int RX_FILTER_CFG_DROP_ACK ;
 int RX_FILTER_CFG_DROP_BA ;
 int RX_FILTER_CFG_DROP_BAR ;
 int RX_FILTER_CFG_DROP_BROADCAST ;
 int RX_FILTER_CFG_DROP_CF_END ;
 int RX_FILTER_CFG_DROP_CF_END_ACK ;
 int RX_FILTER_CFG_DROP_CNTL ;
 int RX_FILTER_CFG_DROP_CRC_ERROR ;
 int RX_FILTER_CFG_DROP_CTS ;
 int RX_FILTER_CFG_DROP_DUPLICATE ;
 int RX_FILTER_CFG_DROP_MULTICAST ;
 int RX_FILTER_CFG_DROP_NOT_MY_BSSD ;
 int RX_FILTER_CFG_DROP_NOT_TO_ME ;
 int RX_FILTER_CFG_DROP_PHY_ERROR ;
 int RX_FILTER_CFG_DROP_PSPOLL ;
 int RX_FILTER_CFG_DROP_RTS ;
 int RX_FILTER_CFG_DROP_VER_ERROR ;
 int rt2800_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int ) ;
 int rt2x00_set_field32 (int *,int ,int) ;

void rt2800_config_filter(struct rt2x00_dev *rt2x00dev,
     const unsigned int filter_flags)
{
 u32 reg;







 rt2800_register_read(rt2x00dev, RX_FILTER_CFG, &reg);
 rt2x00_set_field32(&reg, RX_FILTER_CFG_DROP_CRC_ERROR,
      !(filter_flags & FIF_FCSFAIL));
 rt2x00_set_field32(&reg, RX_FILTER_CFG_DROP_PHY_ERROR,
      !(filter_flags & FIF_PLCPFAIL));
 rt2x00_set_field32(&reg, RX_FILTER_CFG_DROP_NOT_TO_ME,
      !(filter_flags & FIF_PROMISC_IN_BSS));
 rt2x00_set_field32(&reg, RX_FILTER_CFG_DROP_NOT_MY_BSSD, 0);
 rt2x00_set_field32(&reg, RX_FILTER_CFG_DROP_VER_ERROR, 1);
 rt2x00_set_field32(&reg, RX_FILTER_CFG_DROP_MULTICAST,
      !(filter_flags & FIF_ALLMULTI));
 rt2x00_set_field32(&reg, RX_FILTER_CFG_DROP_BROADCAST, 0);
 rt2x00_set_field32(&reg, RX_FILTER_CFG_DROP_DUPLICATE, 1);
 rt2x00_set_field32(&reg, RX_FILTER_CFG_DROP_CF_END_ACK,
      !(filter_flags & FIF_CONTROL));
 rt2x00_set_field32(&reg, RX_FILTER_CFG_DROP_CF_END,
      !(filter_flags & FIF_CONTROL));
 rt2x00_set_field32(&reg, RX_FILTER_CFG_DROP_ACK,
      !(filter_flags & FIF_CONTROL));
 rt2x00_set_field32(&reg, RX_FILTER_CFG_DROP_CTS,
      !(filter_flags & FIF_CONTROL));
 rt2x00_set_field32(&reg, RX_FILTER_CFG_DROP_RTS,
      !(filter_flags & FIF_CONTROL));
 rt2x00_set_field32(&reg, RX_FILTER_CFG_DROP_PSPOLL,
      !(filter_flags & FIF_PSPOLL));
 rt2x00_set_field32(&reg, RX_FILTER_CFG_DROP_BA, 0);
 rt2x00_set_field32(&reg, RX_FILTER_CFG_DROP_BAR,
      !(filter_flags & FIF_CONTROL));
 rt2x00_set_field32(&reg, RX_FILTER_CFG_DROP_CNTL,
      !(filter_flags & FIF_CONTROL));
 rt2800_register_write(rt2x00dev, RX_FILTER_CFG, reg);
}
