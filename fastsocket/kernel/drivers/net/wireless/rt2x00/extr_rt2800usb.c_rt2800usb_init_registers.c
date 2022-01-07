
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int EBUSY ;
 int MAC_SYS_CTRL ;
 int MAC_SYS_CTRL_RESET_BBP ;
 int MAC_SYS_CTRL_RESET_CSR ;
 int PBF_SYS_CTRL ;
 int REGISTER_TIMEOUT ;
 int USB_DEVICE_MODE ;
 int USB_DMA_CFG ;
 int USB_MODE_RESET ;
 scalar_t__ rt2800_wait_csr_ready (struct rt2x00_dev*) ;
 int rt2x00_set_field32 (int*,int ,int) ;
 int rt2x00usb_register_read (struct rt2x00_dev*,int ,int*) ;
 int rt2x00usb_register_write (struct rt2x00_dev*,int ,int) ;
 int rt2x00usb_vendor_request_sw (struct rt2x00_dev*,int ,int ,int ,int ) ;

__attribute__((used)) static int rt2800usb_init_registers(struct rt2x00_dev *rt2x00dev)
{
 u32 reg;




 if (rt2800_wait_csr_ready(rt2x00dev))
  return -EBUSY;

 rt2x00usb_register_read(rt2x00dev, PBF_SYS_CTRL, &reg);
 rt2x00usb_register_write(rt2x00dev, PBF_SYS_CTRL, reg & ~0x00002000);

 reg = 0;
 rt2x00_set_field32(&reg, MAC_SYS_CTRL_RESET_CSR, 1);
 rt2x00_set_field32(&reg, MAC_SYS_CTRL_RESET_BBP, 1);
 rt2x00usb_register_write(rt2x00dev, MAC_SYS_CTRL, reg);

 rt2x00usb_register_write(rt2x00dev, USB_DMA_CFG, 0x00000000);

 rt2x00usb_vendor_request_sw(rt2x00dev, USB_DEVICE_MODE, 0,
        USB_MODE_RESET, REGISTER_TIMEOUT);

 rt2x00usb_register_write(rt2x00dev, MAC_SYS_CTRL, 0x00000000);

 return 0;
}
