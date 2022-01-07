
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int dummy; } ;


 int devdbg (struct usbnet*,char*,int ,int ) ;
 int dm_write_async_helper (struct usbnet*,int ,int ,int ,int *) ;

__attribute__((used)) static void dm_write_reg_async(struct usbnet *dev, u8 reg, u8 value)
{
 devdbg(dev, "dm_write_reg_async() reg=0x%02x value=0x%02x",
        reg, value);

 dm_write_async_helper(dev, reg, value, 0, ((void*)0));
}
