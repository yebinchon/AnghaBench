
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct radeon_i2c_chan {int dummy; } ;
struct i2c_algo_dp_aux_data {int address; } ;
struct i2c_adapter {struct i2c_algo_dp_aux_data* algo_data; } ;


 int AUX_I2C_MOT ;
 int AUX_I2C_READ ;


 int AUX_I2C_REPLY_MASK ;

 int AUX_I2C_WRITE ;


 int AUX_NATIVE_REPLY_MASK ;

 int DRM_DEBUG_KMS (char*,...) ;
 int DRM_ERROR (char*,int) ;
 int EBUSY ;
 int EREMOTEIO ;

 int MODE_I2C_STOP ;

 int radeon_process_aux_ch (struct radeon_i2c_chan*,int*,int,int*,int,int ,int*) ;
 int udelay (int) ;

int radeon_dp_i2c_aux_ch(struct i2c_adapter *adapter, int mode,
    u8 write_byte, u8 *read_byte)
{
 struct i2c_algo_dp_aux_data *algo_data = adapter->algo_data;
 struct radeon_i2c_chan *auxch = (struct radeon_i2c_chan *)adapter;
 u16 address = algo_data->address;
 u8 msg[5];
 u8 reply[2];
 unsigned retry;
 int msg_bytes;
 int reply_bytes = 1;
 int ret;
 u8 ack;


 if (mode & 129)
  msg[2] = AUX_I2C_READ << 4;
 else
  msg[2] = AUX_I2C_WRITE << 4;

 if (!(mode & MODE_I2C_STOP))
  msg[2] |= AUX_I2C_MOT << 4;

 msg[0] = address;
 msg[1] = address >> 8;

 switch (mode) {
 case 128:
  msg_bytes = 5;
  msg[3] = msg_bytes << 4;
  msg[4] = write_byte;
  break;
 case 129:
  msg_bytes = 4;
  msg[3] = msg_bytes << 4;
  break;
 default:
  msg_bytes = 4;
  msg[3] = 3 << 4;
  break;
 }

 for (retry = 0; retry < 4; retry++) {
  ret = radeon_process_aux_ch(auxch,
         msg, msg_bytes, reply, reply_bytes, 0, &ack);
  if (ret == -EBUSY)
   continue;
  else if (ret < 0) {
   DRM_DEBUG_KMS("aux_ch failed %d\n", ret);
   return ret;
  }

  switch (ack & AUX_NATIVE_REPLY_MASK) {
  case 132:



   break;
  case 130:
   DRM_DEBUG_KMS("aux_ch native nack\n");
   return -EREMOTEIO;
  case 131:
   DRM_DEBUG_KMS("aux_ch native defer\n");
   udelay(400);
   continue;
  default:
   DRM_ERROR("aux_ch invalid native reply 0x%02x\n", ack);
   return -EREMOTEIO;
  }

  switch (ack & AUX_I2C_REPLY_MASK) {
  case 135:
   if (mode == 129)
    *read_byte = reply[0];
   return ret;
  case 133:
   DRM_DEBUG_KMS("aux_i2c nack\n");
   return -EREMOTEIO;
  case 134:
   DRM_DEBUG_KMS("aux_i2c defer\n");
   udelay(400);
   break;
  default:
   DRM_ERROR("aux_i2c invalid reply 0x%02x\n", ack);
   return -EREMOTEIO;
  }
 }

 DRM_DEBUG_KMS("aux i2c too many retries, giving up\n");
 return -EREMOTEIO;
}
