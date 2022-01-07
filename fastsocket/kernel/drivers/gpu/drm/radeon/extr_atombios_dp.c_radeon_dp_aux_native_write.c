
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct radeon_connector_atom_dig {int dp_i2c_bus; } ;
struct radeon_connector {struct radeon_connector_atom_dig* con_priv; } ;


 int AUX_NATIVE_REPLY_ACK ;
 int AUX_NATIVE_REPLY_DEFER ;
 int AUX_NATIVE_REPLY_MASK ;
 int AUX_NATIVE_WRITE ;
 int EBUSY ;
 int EIO ;
 int memcpy (int*,int*,int) ;
 int radeon_process_aux_ch (int ,int*,int,int *,int ,int,int*) ;
 int udelay (int) ;

__attribute__((used)) static int radeon_dp_aux_native_write(struct radeon_connector *radeon_connector,
          u16 address, u8 *send, u8 send_bytes, u8 delay)
{
 struct radeon_connector_atom_dig *dig_connector = radeon_connector->con_priv;
 int ret;
 u8 msg[20];
 int msg_bytes = send_bytes + 4;
 u8 ack;
 unsigned retry;

 if (send_bytes > 16)
  return -1;

 msg[0] = address;
 msg[1] = address >> 8;
 msg[2] = AUX_NATIVE_WRITE << 4;
 msg[3] = (msg_bytes << 4) | (send_bytes - 1);
 memcpy(&msg[4], send, send_bytes);

 for (retry = 0; retry < 4; retry++) {
  ret = radeon_process_aux_ch(dig_connector->dp_i2c_bus,
         msg, msg_bytes, ((void*)0), 0, delay, &ack);
  if (ret == -EBUSY)
   continue;
  else if (ret < 0)
   return ret;
  if ((ack & AUX_NATIVE_REPLY_MASK) == AUX_NATIVE_REPLY_ACK)
   return send_bytes;
  else if ((ack & AUX_NATIVE_REPLY_MASK) == AUX_NATIVE_REPLY_DEFER)
   udelay(400);
  else
   return -EIO;
 }

 return -EIO;
}
