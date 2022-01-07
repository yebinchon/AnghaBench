
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int AUTOWAKEUP_CFG ;
 int AUX_CTRL ;
 int AUX_CTRL_FORCE_PCIE_CLK ;
 int AUX_CTRL_WAKE_PCIE_EN ;
 int EBUSY ;
 int H2M_BBP_AGENT ;
 int H2M_INT_SRC ;
 int H2M_MAILBOX_CSR ;
 int MCU_BOOT_SIGNAL ;
 int PBF_SYS_CTRL ;
 int PBF_SYS_CTRL_READY ;
 int PWR_PIN_CFG ;
 unsigned int REGISTER_BUSY_COUNT ;
 int RT3290 ;
 int RT3572 ;
 int RT5390 ;
 int RT5392 ;
 int msleep (int) ;
 int rt2800_disable_wpdma (struct rt2x00_dev*) ;
 int rt2800_drv_write_firmware (struct rt2x00_dev*,int const*,size_t const) ;
 int rt2800_enable_wlan_rt3290 (struct rt2x00_dev*) ;
 int rt2800_mcu_request (struct rt2x00_dev*,int ,int ,int ,int ) ;
 int rt2800_register_read (struct rt2x00_dev*,int ,int*) ;
 int rt2800_register_write (struct rt2x00_dev*,int ,int) ;
 scalar_t__ rt2800_wait_csr_ready (struct rt2x00_dev*) ;
 int rt2x00_err (struct rt2x00_dev*,char*) ;
 scalar_t__ rt2x00_get_field32 (int,int ) ;
 scalar_t__ rt2x00_is_pci (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_is_usb (struct rt2x00_dev*) ;
 scalar_t__ rt2x00_rt (struct rt2x00_dev*,int ) ;
 int rt2x00_set_field32 (int*,int ,int) ;

int rt2800_load_firmware(struct rt2x00_dev *rt2x00dev,
    const u8 *data, const size_t len)
{
 unsigned int i;
 u32 reg;
 int retval;

 if (rt2x00_rt(rt2x00dev, RT3290)) {
  retval = rt2800_enable_wlan_rt3290(rt2x00dev);
  if (retval)
   return -EBUSY;
 }





 rt2800_register_write(rt2x00dev, AUTOWAKEUP_CFG, 0x00000000);




 if (rt2800_wait_csr_ready(rt2x00dev))
  return -EBUSY;

 if (rt2x00_is_pci(rt2x00dev)) {
  if (rt2x00_rt(rt2x00dev, RT3290) ||
      rt2x00_rt(rt2x00dev, RT3572) ||
      rt2x00_rt(rt2x00dev, RT5390) ||
      rt2x00_rt(rt2x00dev, RT5392)) {
   rt2800_register_read(rt2x00dev, AUX_CTRL, &reg);
   rt2x00_set_field32(&reg, AUX_CTRL_FORCE_PCIE_CLK, 1);
   rt2x00_set_field32(&reg, AUX_CTRL_WAKE_PCIE_EN, 1);
   rt2800_register_write(rt2x00dev, AUX_CTRL, reg);
  }
  rt2800_register_write(rt2x00dev, PWR_PIN_CFG, 0x00000002);
 }

 rt2800_disable_wpdma(rt2x00dev);




 rt2800_drv_write_firmware(rt2x00dev, data, len);




 for (i = 0; i < REGISTER_BUSY_COUNT; i++) {
  rt2800_register_read(rt2x00dev, PBF_SYS_CTRL, &reg);
  if (rt2x00_get_field32(reg, PBF_SYS_CTRL_READY))
   break;
  msleep(1);
 }

 if (i == REGISTER_BUSY_COUNT) {
  rt2x00_err(rt2x00dev, "PBF system register not ready\n");
  return -EBUSY;
 }





 rt2800_disable_wpdma(rt2x00dev);




 rt2800_register_write(rt2x00dev, H2M_BBP_AGENT, 0);
 rt2800_register_write(rt2x00dev, H2M_MAILBOX_CSR, 0);
 if (rt2x00_is_usb(rt2x00dev)) {
  rt2800_register_write(rt2x00dev, H2M_INT_SRC, 0);
  rt2800_mcu_request(rt2x00dev, MCU_BOOT_SIGNAL, 0, 0, 0);
 }
 msleep(1);

 return 0;
}
