
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct rt2x00_dev {int csr_mutex; } ;


 int H2M_MAILBOX_CSR ;
 int H2M_MAILBOX_CSR_ARG0 ;
 int H2M_MAILBOX_CSR_ARG1 ;
 int H2M_MAILBOX_CSR_CMD_TOKEN ;
 int H2M_MAILBOX_CSR_OWNER ;
 int HOST_CMD_CSR ;
 int HOST_CMD_CSR_HOST_COMMAND ;
 scalar_t__ WAIT_FOR_MCU (struct rt2x00_dev*,scalar_t__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rt2800_register_write_lock (struct rt2x00_dev*,int ,scalar_t__) ;
 scalar_t__ rt2x00_is_soc (struct rt2x00_dev*) ;
 int rt2x00_set_field32 (scalar_t__*,int ,int const) ;

void rt2800_mcu_request(struct rt2x00_dev *rt2x00dev,
   const u8 command, const u8 token,
   const u8 arg0, const u8 arg1)
{
 u32 reg;




 if (rt2x00_is_soc(rt2x00dev))
  return;

 mutex_lock(&rt2x00dev->csr_mutex);





 if (WAIT_FOR_MCU(rt2x00dev, &reg)) {
  rt2x00_set_field32(&reg, H2M_MAILBOX_CSR_OWNER, 1);
  rt2x00_set_field32(&reg, H2M_MAILBOX_CSR_CMD_TOKEN, token);
  rt2x00_set_field32(&reg, H2M_MAILBOX_CSR_ARG0, arg0);
  rt2x00_set_field32(&reg, H2M_MAILBOX_CSR_ARG1, arg1);
  rt2800_register_write_lock(rt2x00dev, H2M_MAILBOX_CSR, reg);

  reg = 0;
  rt2x00_set_field32(&reg, HOST_CMD_CSR_HOST_COMMAND, command);
  rt2800_register_write_lock(rt2x00dev, HOST_CMD_CSR, reg);
 }

 mutex_unlock(&rt2x00dev->csr_mutex);
}
