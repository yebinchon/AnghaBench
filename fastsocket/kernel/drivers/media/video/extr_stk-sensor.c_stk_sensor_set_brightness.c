
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk_camera {int dummy; } ;


 int EINVAL ;
 int REG_AEB ;
 int REG_AEW ;
 int max (int,int) ;
 int min (int,int) ;
 int stk_sensor_outb (struct stk_camera*,int ,int ) ;

int stk_sensor_set_brightness(struct stk_camera *dev, int br)
{
 if (br < 0 || br > 0xff)
  return -EINVAL;
 stk_sensor_outb(dev, REG_AEB, max(0x00, br - 6));
 stk_sensor_outb(dev, REG_AEW, min(0xff, br + 6));
 return 0;
}
