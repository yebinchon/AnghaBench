
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {int dummy; } ;


 int AX_CMD_WRITE_GPIOS ;
 int asix_write_cmd (struct usbnet*,int ,int ,int ,int ,int *) ;
 int devdbg (struct usbnet*,char*,int ) ;
 int deverr (struct usbnet*,char*,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static int asix_write_gpio(struct usbnet *dev, u16 value, int sleep)
{
 int ret;

 devdbg(dev,"asix_write_gpio() - value = 0x%04x", value);
 ret = asix_write_cmd(dev, AX_CMD_WRITE_GPIOS, value, 0, 0, ((void*)0));
 if (ret < 0)
  deverr(dev, "Failed to write GPIO value 0x%04x: %02x",
   value, ret);

 if (sleep)
  msleep(sleep);

 return ret;
}
