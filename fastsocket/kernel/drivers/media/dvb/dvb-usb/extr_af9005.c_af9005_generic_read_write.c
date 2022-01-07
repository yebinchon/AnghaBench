
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct dvb_usb_device {struct af9005_device_state* priv; } ;
struct af9005_device_state {int sequence; } ;


 int AF9005_CMD_AUTOINC ;
 int AF9005_CMD_BURST ;
 int AF9005_CMD_OFDM_REG ;
 int AF9005_CMD_READ ;
 int AF9005_CMD_TUNER ;
 int AF9005_CMD_WRITE ;
 int AF9005_OFDM_REG ;
 int AF9005_REGISTER_RW ;
 int AF9005_REGISTER_RW_ACK ;
 int AF9005_TUNER_REG ;
 int EINVAL ;
 int EIO ;
 int dvb_usb_generic_rw (struct dvb_usb_device*,int*,int,int*,int,int ) ;
 int err (char*) ;

__attribute__((used)) static int af9005_generic_read_write(struct dvb_usb_device *d, u16 reg,
         int readwrite, int type, u8 * values, int len)
{
 struct af9005_device_state *st = d->priv;
 u8 obuf[16] = { 0 };
 u8 ibuf[17] = { 0 };
 u8 command;
 int i;
 int ret;

 if (len < 1) {
  err("generic read/write, less than 1 byte. Makes no sense.");
  return -EINVAL;
 }
 if (len > 8) {
  err("generic read/write, more than 8 bytes. Not supported.");
  return -EINVAL;
 }

 obuf[0] = 14;
 obuf[1] = 0;

 obuf[2] = AF9005_REGISTER_RW;
 obuf[3] = 12;

 obuf[4] = st->sequence++;

 obuf[5] = (u8) (reg >> 8);
 obuf[6] = (u8) (reg & 0xff);

 if (type == AF9005_OFDM_REG) {
  command = AF9005_CMD_OFDM_REG;
 } else {
  command = AF9005_CMD_TUNER;
 }

 if (len > 1)
  command |=
      AF9005_CMD_BURST | AF9005_CMD_AUTOINC | (len - 1) << 3;
 command |= readwrite;
 if (readwrite == AF9005_CMD_WRITE)
  for (i = 0; i < len; i++)
   obuf[8 + i] = values[i];
 else if (type == AF9005_TUNER_REG)

  obuf[8] = values[0];
 obuf[7] = command;

 ret = dvb_usb_generic_rw(d, obuf, 16, ibuf, 17, 0);
 if (ret)
  return ret;


 if (ibuf[2] != AF9005_REGISTER_RW_ACK) {
  err("generic read/write, wrong reply code.");
  return -EIO;
 }
 if (ibuf[3] != 0x0d) {
  err("generic read/write, wrong length in reply.");
  return -EIO;
 }
 if (ibuf[4] != obuf[4]) {
  err("generic read/write, wrong sequence in reply.");
  return -EIO;
 }
 if (ibuf[16] != 0x01) {
  err("generic read/write wrong status code in reply.");
  return -EIO;
 }
 if (readwrite == AF9005_CMD_READ)
  for (i = 0; i < len; i++)
   values[i] = ibuf[8 + i];

 return 0;

}
