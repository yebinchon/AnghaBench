
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int intf_ap_count; } ;


 unsigned int const FIF_ALLMULTI ;
 unsigned int const FIF_CONTROL ;
 unsigned int const FIF_FCSFAIL ;
 unsigned int const FIF_PLCPFAIL ;
 unsigned int const FIF_PROMISC_IN_BSS ;
 int RXCSR0 ;
 int RXCSR0_DROP_BCAST ;
 int RXCSR0_DROP_CONTROL ;
 int RXCSR0_DROP_CRC ;
 int RXCSR0_DROP_MCAST ;
 int RXCSR0_DROP_NOT_TO_ME ;
 int RXCSR0_DROP_PHYSICAL ;
 int RXCSR0_DROP_TODS ;
 int RXCSR0_DROP_VERSION_ERROR ;
 int rt2x00_set_field32 (int *,int ,int) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static void rt2500pci_config_filter(struct rt2x00_dev *rt2x00dev,
        const unsigned int filter_flags)
{
 u32 reg;







 rt2x00mmio_register_read(rt2x00dev, RXCSR0, &reg);
 rt2x00_set_field32(&reg, RXCSR0_DROP_CRC,
      !(filter_flags & FIF_FCSFAIL));
 rt2x00_set_field32(&reg, RXCSR0_DROP_PHYSICAL,
      !(filter_flags & FIF_PLCPFAIL));
 rt2x00_set_field32(&reg, RXCSR0_DROP_CONTROL,
      !(filter_flags & FIF_CONTROL));
 rt2x00_set_field32(&reg, RXCSR0_DROP_NOT_TO_ME,
      !(filter_flags & FIF_PROMISC_IN_BSS));
 rt2x00_set_field32(&reg, RXCSR0_DROP_TODS,
      !(filter_flags & FIF_PROMISC_IN_BSS) &&
      !rt2x00dev->intf_ap_count);
 rt2x00_set_field32(&reg, RXCSR0_DROP_VERSION_ERROR, 1);
 rt2x00_set_field32(&reg, RXCSR0_DROP_MCAST,
      !(filter_flags & FIF_ALLMULTI));
 rt2x00_set_field32(&reg, RXCSR0_DROP_BCAST, 0);
 rt2x00mmio_register_write(rt2x00dev, RXCSR0, reg);
}
