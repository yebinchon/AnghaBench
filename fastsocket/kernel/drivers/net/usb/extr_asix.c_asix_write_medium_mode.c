
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {int dummy; } ;


 int AX_CMD_WRITE_MEDIUM_MODE ;
 int asix_write_cmd (struct usbnet*,int ,int ,int ,int ,int *) ;
 int devdbg (struct usbnet*,char*,int ) ;
 int deverr (struct usbnet*,char*,int ,int) ;

__attribute__((used)) static int asix_write_medium_mode(struct usbnet *dev, u16 mode)
{
 int ret;

 devdbg(dev,"asix_write_medium_mode() - mode = 0x%04x", mode);
 ret = asix_write_cmd(dev, AX_CMD_WRITE_MEDIUM_MODE, mode, 0, 0, ((void*)0));
 if (ret < 0)
  deverr(dev, "Failed to write Medium Mode mode to 0x%04x: %02x",
   mode, ret);

 return ret;
}
