
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int dummy; } ;


 int AX_CMD_SW_RESET ;
 int asix_write_cmd (struct usbnet*,int ,int ,int ,int ,int *) ;
 int deverr (struct usbnet*,char*,int) ;

__attribute__((used)) static int asix_sw_reset(struct usbnet *dev, u8 flags)
{
 int ret;

        ret = asix_write_cmd(dev, AX_CMD_SW_RESET, flags, 0, 0, ((void*)0));
 if (ret < 0)
  deverr(dev,"Failed to send software reset: %02x", ret);

 return ret;
}
