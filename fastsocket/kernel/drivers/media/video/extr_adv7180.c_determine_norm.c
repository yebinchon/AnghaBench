
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
typedef int u8 ;
struct i2c_client {int dummy; } ;


 int ADV7180_STATUS1_AUTOD_MASK ;
 int ADV7180_STATUS1_REG ;
 int V4L2_STD_NTSC_443 ;
 int V4L2_STD_NTSC_M_JP ;
 int V4L2_STD_PAL ;
 int V4L2_STD_PAL_60 ;
 int V4L2_STD_PAL_M ;
 int V4L2_STD_PAL_N ;
 int V4L2_STD_PAL_Nc ;
 int V4L2_STD_SECAM ;
 int V4L2_STD_UNKNOWN ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;

__attribute__((used)) static v4l2_std_id determine_norm(struct i2c_client *client)
{
 u8 status1 = i2c_smbus_read_byte_data(client, ADV7180_STATUS1_REG);

 switch (status1 & ADV7180_STATUS1_AUTOD_MASK) {
 case 134:
  return V4L2_STD_NTSC_M_JP;
 case 135:
  return V4L2_STD_NTSC_443;
 case 130:
  return V4L2_STD_PAL_M;
 case 133:
  return V4L2_STD_PAL_60;
 case 132:
  return V4L2_STD_PAL;
 case 129:
  return V4L2_STD_SECAM;
 case 131:
  return V4L2_STD_PAL_Nc | V4L2_STD_PAL_N;
 case 128:
  return V4L2_STD_SECAM;
 default:
  return V4L2_STD_UNKNOWN;
 }
}
