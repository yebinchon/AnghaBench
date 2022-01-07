
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s16 ;


 int EINVAL ;
 int MOTION_SENSOR_X_KEY ;
 int MOTION_SENSOR_Y_KEY ;
 int MOTION_SENSOR_Z_KEY ;



 int applesmc_read_key (int ,int*,int) ;

__attribute__((used)) static int applesmc_read_motion_sensor(int index, s16* value)
{
 u8 buffer[2];
 int ret;

 switch (index) {
 case 130:
  ret = applesmc_read_key(MOTION_SENSOR_X_KEY, buffer, 2);
  break;
 case 129:
  ret = applesmc_read_key(MOTION_SENSOR_Y_KEY, buffer, 2);
  break;
 case 128:
  ret = applesmc_read_key(MOTION_SENSOR_Z_KEY, buffer, 2);
  break;
 default:
  ret = -EINVAL;
 }

 *value = ((s16)buffer[0] << 8) | buffer[1];

 return ret;
}
