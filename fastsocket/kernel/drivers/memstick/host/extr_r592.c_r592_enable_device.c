
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r592_device {int dummy; } ;


 int R592_IO ;
 int R592_IO_RESET ;
 int R592_POWER ;
 int R592_POWER_0 ;
 int R592_POWER_1 ;
 int dbg (char*,char*) ;
 int msleep (int) ;
 int r592_set_reg_mask (struct r592_device*,int ,int ) ;
 int r592_write_reg (struct r592_device*,int ,int) ;

__attribute__((used)) static int r592_enable_device(struct r592_device *dev, bool enable)
{
 dbg("%sabling the device", enable ? "en" : "dis");

 if (enable) {


  r592_write_reg(dev, R592_POWER, R592_POWER_0 | R592_POWER_1);


  r592_set_reg_mask(dev, R592_IO, R592_IO_RESET);

  msleep(100);
 } else

  r592_write_reg(dev, R592_POWER, 0);

 return 0;
}
