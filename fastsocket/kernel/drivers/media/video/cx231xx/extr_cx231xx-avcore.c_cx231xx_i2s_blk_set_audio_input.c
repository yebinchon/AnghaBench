
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx231xx {int ctl_ainput; } ;


 int CH_PWR_CTRL1 ;
 int CH_PWR_CTRL2 ;


 int I2S_BLK_DEVICE_ADDRESS ;
 int cx231xx_write_i2c_data (struct cx231xx*,int ,int ,int,int,int) ;

int cx231xx_i2s_blk_set_audio_input(struct cx231xx *dev, u8 audio_input)
{
 int status = 0;

 switch (audio_input) {
 case 129:
  status = cx231xx_write_i2c_data(dev, I2S_BLK_DEVICE_ADDRESS,
      CH_PWR_CTRL2, 1, 0x00, 1);
  status = cx231xx_write_i2c_data(dev, I2S_BLK_DEVICE_ADDRESS,
      CH_PWR_CTRL1, 1, 0x80, 1);
  break;
 case 128:
 default:
  break;
 }

 dev->ctl_ainput = audio_input;

 return status;
}
