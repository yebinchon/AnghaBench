
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct usbnet {int dummy; } ;


 int devdbg (struct usbnet*,char*,int ,int ) ;
 int dm_write_async_helper (struct usbnet*,int ,int ,int ,void*) ;

__attribute__((used)) static void dm_write_async(struct usbnet *dev, u8 reg, u16 length, void *data)
{
 devdbg(dev, "dm_write_async() reg=0x%02x length=%d", reg, length);

 dm_write_async_helper(dev, reg, 0, length, data);
}
