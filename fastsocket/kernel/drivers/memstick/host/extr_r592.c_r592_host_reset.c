
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r592_device {int parallel_mode; } ;


 int R592_IO ;
 int R592_IO_RESET ;
 int msleep (int) ;
 int r592_set_mode (struct r592_device*,int ) ;
 int r592_set_reg_mask (struct r592_device*,int ,int ) ;

__attribute__((used)) static void r592_host_reset(struct r592_device *dev)
{
 r592_set_reg_mask(dev, R592_IO, R592_IO_RESET);
 msleep(100);
 r592_set_mode(dev, dev->parallel_mode);
}
