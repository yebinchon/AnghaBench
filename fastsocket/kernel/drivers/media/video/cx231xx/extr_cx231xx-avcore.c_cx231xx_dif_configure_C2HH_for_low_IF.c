
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct cx231xx {int dummy; } ;


 int AFE_CTRL_C2HH_SRC_CTRL ;
 int AUD_IO_CTRL ;
 scalar_t__ DIF_USE_BASEBAND ;
 scalar_t__ V4L2_STD_MN ;
 scalar_t__ V4L2_STD_PAL_D ;
 scalar_t__ V4L2_STD_PAL_I ;
 scalar_t__ V4L2_STD_SECAM ;
 scalar_t__ V4L2_TUNER_RADIO ;
 int VID_BLK_I2C_ADDRESS ;
 int cx231xx_reg_mask_write (struct cx231xx*,int ,int,int ,int,int,int) ;

int cx231xx_dif_configure_C2HH_for_low_IF(struct cx231xx *dev, u32 mode,
       u32 function_mode, u32 standard)
{
 int status = 0;


 if (mode == V4L2_TUNER_RADIO) {


  status = cx231xx_reg_mask_write(dev,
    VID_BLK_I2C_ADDRESS, 32,
    AFE_CTRL_C2HH_SRC_CTRL, 30, 31, 0x1);

  status = cx231xx_reg_mask_write(dev,
    VID_BLK_I2C_ADDRESS, 32,
    AFE_CTRL_C2HH_SRC_CTRL, 23, 24, function_mode);

  status = cx231xx_reg_mask_write(dev,
    VID_BLK_I2C_ADDRESS, 32,
    AFE_CTRL_C2HH_SRC_CTRL, 15, 22, 0xFF);

  status = cx231xx_reg_mask_write(dev,
    VID_BLK_I2C_ADDRESS, 32,
    AFE_CTRL_C2HH_SRC_CTRL, 9, 9, 0x1);
 } else if (standard != DIF_USE_BASEBAND) {
  if (standard & V4L2_STD_MN) {

   status = cx231xx_reg_mask_write(dev,
     VID_BLK_I2C_ADDRESS, 32,
     AFE_CTRL_C2HH_SRC_CTRL, 30, 31, 0x1);

   status = cx231xx_reg_mask_write(dev,
     VID_BLK_I2C_ADDRESS, 32,
     AFE_CTRL_C2HH_SRC_CTRL, 23, 24,
     function_mode);

   status = cx231xx_reg_mask_write(dev,
     VID_BLK_I2C_ADDRESS, 32,
     AFE_CTRL_C2HH_SRC_CTRL, 15, 22, 0xb);

   status = cx231xx_reg_mask_write(dev,
     VID_BLK_I2C_ADDRESS, 32,
     AFE_CTRL_C2HH_SRC_CTRL, 9, 9, 0x1);

   status = cx231xx_reg_mask_write(dev,
     VID_BLK_I2C_ADDRESS, 32,
     AUD_IO_CTRL, 0, 31, 0x00000003);
  } else if ((standard == V4L2_STD_PAL_I) |
   (standard & V4L2_STD_PAL_D) |
   (standard & V4L2_STD_SECAM)) {


   status = cx231xx_reg_mask_write(dev,
     VID_BLK_I2C_ADDRESS, 32,
     AFE_CTRL_C2HH_SRC_CTRL, 30, 31, 0x1);

   status = cx231xx_reg_mask_write(dev,
     VID_BLK_I2C_ADDRESS, 32,
     AFE_CTRL_C2HH_SRC_CTRL, 23, 24,
     function_mode);

   status = cx231xx_reg_mask_write(dev,
     VID_BLK_I2C_ADDRESS, 32,
     AFE_CTRL_C2HH_SRC_CTRL, 15, 22, 0xF);

   status = cx231xx_reg_mask_write(dev,
     VID_BLK_I2C_ADDRESS, 32,
     AFE_CTRL_C2HH_SRC_CTRL, 9, 9, 0x1);
  } else {



   status = cx231xx_reg_mask_write(dev,
     VID_BLK_I2C_ADDRESS, 32,
     AFE_CTRL_C2HH_SRC_CTRL, 30, 31, 0x1);

   status = cx231xx_reg_mask_write(dev,
     VID_BLK_I2C_ADDRESS, 32,
     AFE_CTRL_C2HH_SRC_CTRL, 23, 24,
     function_mode);

   status = cx231xx_reg_mask_write(dev,
     VID_BLK_I2C_ADDRESS, 32,
     AFE_CTRL_C2HH_SRC_CTRL, 15, 22, 0xE);

   status = cx231xx_reg_mask_write(dev,
     VID_BLK_I2C_ADDRESS, 32,
     AFE_CTRL_C2HH_SRC_CTRL, 9, 9, 0x1);
  }
 }

 return status;
}
