
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stk_camera {int dummy; } ;


 int COM2_SSLEEP ;
 int REG_COM2 ;
 scalar_t__ stk_sensor_inb (struct stk_camera*,int ,int*) ;
 scalar_t__ stk_sensor_outb (struct stk_camera*,int ,int) ;

int stk_sensor_sleep(struct stk_camera *dev)
{
 u8 tmp;
 return stk_sensor_inb(dev, REG_COM2, &tmp)
  || stk_sensor_outb(dev, REG_COM2, tmp|COM2_SSLEEP);
}
