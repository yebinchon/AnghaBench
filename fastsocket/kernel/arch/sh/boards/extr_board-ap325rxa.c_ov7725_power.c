
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int camera_power (int) ;

__attribute__((used)) static int ov7725_power(struct device *dev, int mode)
{
 camera_power(0);
 if (mode)
  camera_power(1);

 return 0;
}
