
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rt2x00_dev {int dummy; } ;


 int EBUSY ;
 int FIRMWARE_IMAGE_BASE ;
 int H2M_MAILBOX_CSR ;
 int HOST_CMD_CSR ;
 int M2H_CMD_DONE_CSR ;
 int MAC_CSR0 ;
 int MAC_CSR1 ;
 int MAC_CSR1_BBP_RESET ;
 int MAC_CSR1_HOST_READY ;
 int MAC_CSR1_SOFT_RESET ;
 int MCU_CNTL_CSR ;
 int MCU_CNTL_CSR_READY ;
 int MCU_CNTL_CSR_RESET ;
 int MCU_CNTL_CSR_SELECT_BANK ;
 int msleep (int) ;
 int rt2x00_err (struct rt2x00_dev*,char*) ;
 scalar_t__ rt2x00_get_field32 (int,int ) ;
 int rt2x00_set_field32 (int*,int ,int) ;
 int rt2x00mmio_register_multiwrite (struct rt2x00_dev*,int ,int const*,size_t const) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int*) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int) ;

__attribute__((used)) static int rt61pci_load_firmware(struct rt2x00_dev *rt2x00dev,
     const u8 *data, const size_t len)
{
 int i;
 u32 reg;




 for (i = 0; i < 100; i++) {
  rt2x00mmio_register_read(rt2x00dev, MAC_CSR0, &reg);
  if (reg)
   break;
  msleep(1);
 }

 if (!reg) {
  rt2x00_err(rt2x00dev, "Unstable hardware\n");
  return -EBUSY;
 }




 reg = 0;
 rt2x00_set_field32(&reg, MCU_CNTL_CSR_RESET, 1);
 rt2x00mmio_register_write(rt2x00dev, MCU_CNTL_CSR, reg);
 rt2x00mmio_register_write(rt2x00dev, M2H_CMD_DONE_CSR, 0xffffffff);
 rt2x00mmio_register_write(rt2x00dev, H2M_MAILBOX_CSR, 0);
 rt2x00mmio_register_write(rt2x00dev, HOST_CMD_CSR, 0);




 reg = 0;
 rt2x00_set_field32(&reg, MCU_CNTL_CSR_RESET, 1);
 rt2x00_set_field32(&reg, MCU_CNTL_CSR_SELECT_BANK, 1);
 rt2x00mmio_register_write(rt2x00dev, MCU_CNTL_CSR, reg);

 rt2x00mmio_register_multiwrite(rt2x00dev, FIRMWARE_IMAGE_BASE,
           data, len);

 rt2x00_set_field32(&reg, MCU_CNTL_CSR_SELECT_BANK, 0);
 rt2x00mmio_register_write(rt2x00dev, MCU_CNTL_CSR, reg);

 rt2x00_set_field32(&reg, MCU_CNTL_CSR_RESET, 0);
 rt2x00mmio_register_write(rt2x00dev, MCU_CNTL_CSR, reg);

 for (i = 0; i < 100; i++) {
  rt2x00mmio_register_read(rt2x00dev, MCU_CNTL_CSR, &reg);
  if (rt2x00_get_field32(reg, MCU_CNTL_CSR_READY))
   break;
  msleep(1);
 }

 if (i == 100) {
  rt2x00_err(rt2x00dev, "MCU Control register not ready\n");
  return -EBUSY;
 }




 msleep(1);




 reg = 0;
 rt2x00_set_field32(&reg, MAC_CSR1_SOFT_RESET, 1);
 rt2x00_set_field32(&reg, MAC_CSR1_BBP_RESET, 1);
 rt2x00mmio_register_write(rt2x00dev, MAC_CSR1, reg);

 rt2x00mmio_register_read(rt2x00dev, MAC_CSR1, &reg);
 rt2x00_set_field32(&reg, MAC_CSR1_SOFT_RESET, 0);
 rt2x00_set_field32(&reg, MAC_CSR1_BBP_RESET, 0);
 rt2x00mmio_register_write(rt2x00dev, MAC_CSR1, reg);

 rt2x00mmio_register_read(rt2x00dev, MAC_CSR1, &reg);
 rt2x00_set_field32(&reg, MAC_CSR1_HOST_READY, 1);
 rt2x00mmio_register_write(rt2x00dev, MAC_CSR1, reg);

 return 0;
}
