
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union i2c_smbus_data {int* block; } ;
typedef scalar_t__ u8 ;
struct i2c_adapter {int dummy; } ;


 int HST_CNTL1_LAST ;
 int HST_CNTL2_BLOCK ;
 scalar_t__ I2C_SMBUS_WRITE ;
 int SMB_BLK_DAT ;
 int SMB_HST_CNTL1 ;
 int SMB_HST_CNTL2 ;
 int SMB_HST_DAT0 ;
 int ali1563_block_start (struct i2c_adapter*) ;
 int inb_p (int ) ;
 int outb_p (int,int ) ;

__attribute__((used)) static int ali1563_block(struct i2c_adapter * a, union i2c_smbus_data * data, u8 rw)
{
 int i, len;
 int error = 0;


 outb_p(HST_CNTL1_LAST,SMB_HST_CNTL1);

 if (rw == I2C_SMBUS_WRITE) {
  len = data->block[0];
  if (len < 1)
   len = 1;
  else if (len > 32)
   len = 32;
  outb_p(len,SMB_HST_DAT0);
  outb_p(data->block[1],SMB_BLK_DAT);
 } else
  len = 32;

 outb_p(inb_p(SMB_HST_CNTL2) | HST_CNTL2_BLOCK, SMB_HST_CNTL2);

 for (i = 0; i < len; i++) {
  if (rw == I2C_SMBUS_WRITE) {
   outb_p(data->block[i + 1], SMB_BLK_DAT);
   if ((error = ali1563_block_start(a)))
    break;
  } else {
   if ((error = ali1563_block_start(a)))
    break;
   if (i == 0) {
    len = inb_p(SMB_HST_DAT0);
    if (len < 1)
     len = 1;
    else if (len > 32)
     len = 32;
   }
   data->block[i+1] = inb_p(SMB_BLK_DAT);
  }
 }

 outb_p(HST_CNTL1_LAST,SMB_HST_CNTL1);
 return error;
}
