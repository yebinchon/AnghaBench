
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct rt2x00_dev {int csr_mutex; } ;


 int H2M_MAILBOX_CSR ;
 int H2M_MAILBOX_CSR_ARG0 ;
 int H2M_MAILBOX_CSR_ARG1 ;
 int H2M_MAILBOX_CSR_CMD_TOKEN ;
 int H2M_MAILBOX_CSR_OWNER ;
 int HOST_CMD_CSR ;
 int HOST_CMD_CSR_HOST_COMMAND ;
 int HOST_CMD_CSR_INTERRUPT_MCU ;
 scalar_t__ WAIT_FOR_MCU (struct rt2x00_dev*,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rt2x00_set_field32 (int *,int ,int const) ;
 int rt2x00mmio_register_read (struct rt2x00_dev*,int ,int *) ;
 int rt2x00mmio_register_write (struct rt2x00_dev*,int ,int ) ;

__attribute__((used)) static void rt61pci_mcu_request(struct rt2x00_dev *rt2x00dev,
    const u8 command, const u8 token,
    const u8 arg0, const u8 arg1)
{
 u32 reg;

 mutex_lock(&rt2x00dev->csr_mutex);





 if (WAIT_FOR_MCU(rt2x00dev, &reg)) {
  rt2x00_set_field32(&reg, H2M_MAILBOX_CSR_OWNER, 1);
  rt2x00_set_field32(&reg, H2M_MAILBOX_CSR_CMD_TOKEN, token);
  rt2x00_set_field32(&reg, H2M_MAILBOX_CSR_ARG0, arg0);
  rt2x00_set_field32(&reg, H2M_MAILBOX_CSR_ARG1, arg1);
  rt2x00mmio_register_write(rt2x00dev, H2M_MAILBOX_CSR, reg);

  rt2x00mmio_register_read(rt2x00dev, HOST_CMD_CSR, &reg);
  rt2x00_set_field32(&reg, HOST_CMD_CSR_HOST_COMMAND, command);
  rt2x00_set_field32(&reg, HOST_CMD_CSR_INTERRUPT_MCU, 1);
  rt2x00mmio_register_write(rt2x00dev, HOST_CMD_CSR, reg);
 }

 mutex_unlock(&rt2x00dev->csr_mutex);

}
