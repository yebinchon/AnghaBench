
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx231xx {int norm; } ;


 int DFE_CTRL3 ;
 int FLD_HBLANK_CNT ;
 int FLD_V656BLANK_CNT ;
 int FLD_VACTIVE_CNT ;
 int FLD_VBLANK_CNT ;
 int HORIZ_TIM_CTRL ;
 int V4L2_STD_NTSC ;
 int V4L2_STD_PAL_M ;
 int V4L2_STD_SECAM ;
 int VERT_TIM_CTRL ;
 int VID_BLK_I2C_ADDRESS ;
 int cx231xx_info (char*,...) ;
 int cx231xx_read_modify_write_i2c_dword (struct cx231xx*,int ,int ,int ,int) ;
 int cx231xx_set_field (int ,int) ;
 int vid_blk_write_word (struct cx231xx*,int ,int) ;

int cx231xx_do_mode_ctrl_overrides(struct cx231xx *dev)
{
 int status = 0;

 cx231xx_info("do_mode_ctrl_overrides : 0x%x\n",
       (unsigned int)dev->norm);


 status = vid_blk_write_word(dev, DFE_CTRL3, 0xCD3F0280);

 if (dev->norm & (V4L2_STD_NTSC | V4L2_STD_PAL_M)) {
  cx231xx_info("do_mode_ctrl_overrides NTSC\n");



  status = cx231xx_read_modify_write_i2c_dword(dev,
       VID_BLK_I2C_ADDRESS,
       VERT_TIM_CTRL,
       FLD_VBLANK_CNT, 0x18);
  status = cx231xx_read_modify_write_i2c_dword(dev,
       VID_BLK_I2C_ADDRESS,
       VERT_TIM_CTRL,
       FLD_VACTIVE_CNT,
       0x1E7000);
  status = cx231xx_read_modify_write_i2c_dword(dev,
       VID_BLK_I2C_ADDRESS,
       VERT_TIM_CTRL,
       FLD_V656BLANK_CNT,
       0x1C000000);

  status = cx231xx_read_modify_write_i2c_dword(dev,
       VID_BLK_I2C_ADDRESS,
       HORIZ_TIM_CTRL,
       FLD_HBLANK_CNT,
       cx231xx_set_field
       (FLD_HBLANK_CNT, 0x79));

 } else if (dev->norm & V4L2_STD_SECAM) {
  cx231xx_info("do_mode_ctrl_overrides SECAM\n");
  status = cx231xx_read_modify_write_i2c_dword(dev,
       VID_BLK_I2C_ADDRESS,
       VERT_TIM_CTRL,
       FLD_VBLANK_CNT, 0x20);
  status = cx231xx_read_modify_write_i2c_dword(dev,
       VID_BLK_I2C_ADDRESS,
       VERT_TIM_CTRL,
       FLD_VACTIVE_CNT,
       cx231xx_set_field
       (FLD_VACTIVE_CNT,
        0x244));
  status = cx231xx_read_modify_write_i2c_dword(dev,
       VID_BLK_I2C_ADDRESS,
       VERT_TIM_CTRL,
       FLD_V656BLANK_CNT,
       cx231xx_set_field
       (FLD_V656BLANK_CNT,
       0x24));

  status = cx231xx_read_modify_write_i2c_dword(dev,
       VID_BLK_I2C_ADDRESS,
       HORIZ_TIM_CTRL,
       FLD_HBLANK_CNT,
       cx231xx_set_field
       (FLD_HBLANK_CNT, 0x85));
 } else {
  cx231xx_info("do_mode_ctrl_overrides PAL\n");
  status = cx231xx_read_modify_write_i2c_dword(dev,
       VID_BLK_I2C_ADDRESS,
       VERT_TIM_CTRL,
       FLD_VBLANK_CNT, 0x20);
  status = cx231xx_read_modify_write_i2c_dword(dev,
       VID_BLK_I2C_ADDRESS,
       VERT_TIM_CTRL,
       FLD_VACTIVE_CNT,
       cx231xx_set_field
       (FLD_VACTIVE_CNT,
        0x244));
  status = cx231xx_read_modify_write_i2c_dword(dev,
       VID_BLK_I2C_ADDRESS,
       VERT_TIM_CTRL,
       FLD_V656BLANK_CNT,
       cx231xx_set_field
       (FLD_V656BLANK_CNT,
       0x24));

  status = cx231xx_read_modify_write_i2c_dword(dev,
       VID_BLK_I2C_ADDRESS,
       HORIZ_TIM_CTRL,
       FLD_HBLANK_CNT,
       cx231xx_set_field
       (FLD_HBLANK_CNT, 0x85));

 }

 return status;
}
