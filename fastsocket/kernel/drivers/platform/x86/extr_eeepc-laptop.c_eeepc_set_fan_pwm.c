
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEEPC_EC_SC02 ;
 int SENSORS_LIMIT (int,int ,int) ;
 int ec_write (int ,int) ;

__attribute__((used)) static void eeepc_set_fan_pwm(int value)
{
 value = SENSORS_LIMIT(value, 0, 255);
 value = value * 100 / 255;
 ec_write(EEEPC_EC_SC02, value);
}
