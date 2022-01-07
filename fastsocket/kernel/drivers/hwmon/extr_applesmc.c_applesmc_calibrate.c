
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SENSOR_X ;
 int SENSOR_Y ;
 int applesmc_read_motion_sensor (int ,int *) ;
 int rest_x ;
 int rest_y ;

__attribute__((used)) static void applesmc_calibrate(void)
{
 applesmc_read_motion_sensor(SENSOR_X, &rest_x);
 applesmc_read_motion_sensor(SENSOR_Y, &rest_y);
 rest_x = -rest_x;
}
