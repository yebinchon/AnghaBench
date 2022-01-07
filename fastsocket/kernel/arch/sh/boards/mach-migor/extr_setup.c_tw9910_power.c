
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int camera_power_off () ;
 int camera_power_on (int) ;

__attribute__((used)) static int tw9910_power(struct device *dev, int mode)
{
 if (mode)
  camera_power_on(1);
 else
  camera_power_off();

 return 0;
}
