
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u16 ;
struct pvr2_hdw {int* cmd_buffer; int ctl_lock; } ;


 int EIO ;
 int FX2CMD_GET_IR_CODE ;
 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 unsigned int pvr2_send_request (struct pvr2_hdw*,int*,int,int*,int) ;

__attribute__((used)) static int i2c_24xxx_ir(struct pvr2_hdw *hdw,
   u8 i2c_addr,u8 *wdata,u16 wlen,u8 *rdata,u16 rlen)
{
 u8 dat[4];
 unsigned int stat;

 if (!(rlen || wlen)) {

  return 0;
 }


 if ((wlen != 0) || (rlen == 0)) return -EIO;

 if (rlen < 3) {







  if (rlen > 0) rdata[0] = 0;
  if (rlen > 1) rdata[1] = 0;
  return 0;
 }


 LOCK_TAKE(hdw->ctl_lock); do {
  hdw->cmd_buffer[0] = FX2CMD_GET_IR_CODE;
  stat = pvr2_send_request(hdw,
      hdw->cmd_buffer,1,
      hdw->cmd_buffer,4);
  dat[0] = hdw->cmd_buffer[0];
  dat[1] = hdw->cmd_buffer[1];
  dat[2] = hdw->cmd_buffer[2];
  dat[3] = hdw->cmd_buffer[3];
 } while (0); LOCK_GIVE(hdw->ctl_lock);


 if (stat != 0) return stat;



 rdata[2] = 0xc1;
 if (dat[0] != 1) {

  rdata[0] = 0;
  rdata[1] = 0;
 } else {
  u16 val;


  val = dat[1];
  val <<= 8;
  val |= dat[2];
  val >>= 1;
  val &= ~0x0003;
  val |= 0x8000;
  rdata[0] = (val >> 8) & 0xffu;
  rdata[1] = val & 0xffu;
 }

 return 0;
}
