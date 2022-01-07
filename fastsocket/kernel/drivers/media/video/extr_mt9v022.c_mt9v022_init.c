
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9v022 {int chip_control; } ;
struct i2c_client {int dummy; } ;


 int MT9V022_AEC_AGC_ENABLE ;
 int MT9V022_ANALOG_GAIN ;
 int MT9V022_BLACK_LEVEL_CALIB_CTRL ;
 int MT9V022_CHIP_CONTROL ;
 int MT9V022_DIGITAL_TEST_PATTERN ;
 int MT9V022_MAX_TOTAL_SHUTTER_WIDTH ;
 int MT9V022_READ_MODE ;
 int MT9V022_TOTAL_SHUTTER_WIDTH ;
 int reg_clear (struct i2c_client*,int ,int) ;
 int reg_set (struct i2c_client*,int ,int) ;
 int reg_write (struct i2c_client*,int ,int) ;
 struct mt9v022* to_mt9v022 (struct i2c_client*) ;

__attribute__((used)) static int mt9v022_init(struct i2c_client *client)
{
 struct mt9v022 *mt9v022 = to_mt9v022(client);
 int ret;






 mt9v022->chip_control |= 0x10;
 ret = reg_write(client, MT9V022_CHIP_CONTROL, mt9v022->chip_control);
 if (!ret)
  ret = reg_write(client, MT9V022_READ_MODE, 0x300);


 if (!ret)

  ret = reg_set(client, MT9V022_AEC_AGC_ENABLE, 0x3);
 if (!ret)
  ret = reg_write(client, MT9V022_ANALOG_GAIN, 16);
 if (!ret)
  ret = reg_write(client, MT9V022_TOTAL_SHUTTER_WIDTH, 480);
 if (!ret)
  ret = reg_write(client, MT9V022_MAX_TOTAL_SHUTTER_WIDTH, 480);
 if (!ret)

  ret = reg_clear(client, MT9V022_BLACK_LEVEL_CALIB_CTRL, 1);
 if (!ret)
  ret = reg_write(client, MT9V022_DIGITAL_TEST_PATTERN, 0);

 return ret;
}
