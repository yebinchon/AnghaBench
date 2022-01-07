
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int byte; int* block; int word; } ;
typedef int u8 ;
typedef int u16 ;
struct scx200_acb_iface {int address_byte; int command; int* ptr; int len; int result; scalar_t__ state; int mutex; scalar_t__ needs_reset; } ;
struct i2c_adapter {int dev; } ;
typedef int s32 ;


 int ACBCTL1 ;
 int ACBCTL1_START ;
 int EINVAL ;
 int I2C_SMBUS_BLOCK_MAX ;




 char I2C_SMBUS_READ ;

 int cpu_to_le16 (int ) ;
 int dev_dbg (int *,char*,...) ;
 struct scx200_acb_iface* i2c_get_adapdata (struct i2c_adapter*) ;
 int inb (int ) ;
 int le16_to_cpu (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int outb (int,int ) ;
 int printk (char*,...) ;
 int scx200_acb_poll (struct scx200_acb_iface*) ;
 int scx200_acb_reset (struct scx200_acb_iface*) ;
 scalar_t__ state_address ;
 scalar_t__ state_idle ;
 scalar_t__ state_quick ;

__attribute__((used)) static s32 scx200_acb_smbus_xfer(struct i2c_adapter *adapter,
     u16 address, unsigned short flags,
     char rw, u8 command, int size,
     union i2c_smbus_data *data)
{
 struct scx200_acb_iface *iface = i2c_get_adapdata(adapter);
 int len;
 u8 *buffer;
 u16 cur_word;
 int rc;

 switch (size) {
 case 129:
  len = 0;
  buffer = ((void*)0);
  break;

 case 132:
  len = 1;
  buffer = rw ? &data->byte : &command;
  break;

 case 131:
  len = 1;
  buffer = &data->byte;
  break;

 case 128:
  len = 2;
  cur_word = cpu_to_le16(data->word);
  buffer = (u8 *)&cur_word;
  break;

 case 130:
  len = data->block[0];
  if (len == 0 || len > I2C_SMBUS_BLOCK_MAX)
   return -EINVAL;
  buffer = &data->block[1];
  break;

 default:
  return -EINVAL;
 }

 dev_dbg(&adapter->dev,
  "size=%d, address=0x%x, command=0x%x, len=%d, read=%d\n",
  size, address, command, len, rw);

 if (!len && rw == I2C_SMBUS_READ) {
  dev_dbg(&adapter->dev, "zero length read\n");
  return -EINVAL;
 }

 mutex_lock(&iface->mutex);

 iface->address_byte = (address << 1) | rw;
 iface->command = command;
 iface->ptr = buffer;
 iface->len = len;
 iface->result = -EINVAL;
 iface->needs_reset = 0;

 outb(inb(ACBCTL1) | ACBCTL1_START, ACBCTL1);

 if (size == 129 || size == 132)
  iface->state = state_quick;
 else
  iface->state = state_address;

 while (iface->state != state_idle)
  scx200_acb_poll(iface);

 if (iface->needs_reset)
  scx200_acb_reset(iface);

 rc = iface->result;

 mutex_unlock(&iface->mutex);

 if (rc == 0 && size == 128 && rw == I2C_SMBUS_READ)
  data->word = le16_to_cpu(cur_word);
 return rc;
}
