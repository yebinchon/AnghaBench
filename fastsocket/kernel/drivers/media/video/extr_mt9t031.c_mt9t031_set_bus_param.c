
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_camera_device {int dummy; } ;
struct i2c_client {int dummy; } ;


 int EINVAL ;
 unsigned long MT9T031_BUS_PARAM ;
 int MT9T031_PIXEL_CLOCK_CONTROL ;
 unsigned long SOCAM_PCLK_SAMPLE_FALLING ;
 int reg_clear (struct i2c_client*,int ,int) ;
 int reg_set (struct i2c_client*,int ,int) ;
 struct i2c_client* to_i2c_client (int ) ;
 int to_soc_camera_control (struct soc_camera_device*) ;

__attribute__((used)) static int mt9t031_set_bus_param(struct soc_camera_device *icd,
     unsigned long flags)
{
 struct i2c_client *client = to_i2c_client(to_soc_camera_control(icd));


 if (flags & ~MT9T031_BUS_PARAM)
  return -EINVAL;

 if (flags & SOCAM_PCLK_SAMPLE_FALLING)
  reg_clear(client, MT9T031_PIXEL_CLOCK_CONTROL, 0x8000);
 else
  reg_set(client, MT9T031_PIXEL_CLOCK_CONTROL, 0x8000);

 return 0;
}
