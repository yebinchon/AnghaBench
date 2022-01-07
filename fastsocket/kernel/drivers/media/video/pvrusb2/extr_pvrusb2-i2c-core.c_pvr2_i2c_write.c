
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct pvr2_hdw {int* cmd_buffer; int ctl_lock; } ;


 int EIO ;
 int ENOTSUPP ;
 int FX2CMD_I2C_WRITE ;
 int LOCK_GIVE (int ) ;
 int LOCK_TAKE (int ) ;
 int PVR2_TRACE_ERROR_LEGS ;
 int memcpy (int*,int*,int) ;
 int memset (int*,int ,int) ;
 int pvr2_send_request (struct pvr2_hdw*,int*,int,int*,int) ;
 int pvr2_trace (int ,char*,int,int,unsigned int) ;
 int trace_i2c (char*,int,int) ;

__attribute__((used)) static int pvr2_i2c_write(struct pvr2_hdw *hdw,
     u8 i2c_addr,
     u8 *data,
     u16 length)
{

 int ret;


 if (!data) length = 0;
 if (length > (sizeof(hdw->cmd_buffer) - 3)) {
  pvr2_trace(PVR2_TRACE_ERROR_LEGS,
      "Killing an I2C write to %u that is too large"
      " (desired=%u limit=%u)",
      i2c_addr,
      length,(unsigned int)(sizeof(hdw->cmd_buffer) - 3));
  return -ENOTSUPP;
 }

 LOCK_TAKE(hdw->ctl_lock);


 memset(hdw->cmd_buffer, 0, sizeof(hdw->cmd_buffer));


 hdw->cmd_buffer[0] = FX2CMD_I2C_WRITE;
 hdw->cmd_buffer[1] = i2c_addr;
 hdw->cmd_buffer[2] = length;
 if (length) memcpy(hdw->cmd_buffer + 3, data, length);


 ret = pvr2_send_request(hdw,
    hdw->cmd_buffer,
    length + 3,
    hdw->cmd_buffer,
    1);
 if (!ret) {
  if (hdw->cmd_buffer[0] != 8) {
   ret = -EIO;
   if (hdw->cmd_buffer[0] != 7) {
    trace_i2c("unexpected status"
       " from i2_write[%d]: %d",
       i2c_addr,hdw->cmd_buffer[0]);
   }
  }
 }

 LOCK_GIVE(hdw->ctl_lock);

 return ret;
}
