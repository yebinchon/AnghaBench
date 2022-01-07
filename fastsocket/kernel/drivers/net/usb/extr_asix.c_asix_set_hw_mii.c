
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;


 int AX_CMD_SET_HW_MII ;
 int asix_write_cmd (struct usbnet*,int ,int,int ,int ,int *) ;
 int deverr (struct usbnet*,char*) ;

__attribute__((used)) static inline int asix_set_hw_mii(struct usbnet *dev)
{
 int ret;
 ret = asix_write_cmd(dev, AX_CMD_SET_HW_MII, 0x0000, 0, 0, ((void*)0));
 if (ret < 0)
  deverr(dev, "Failed to enable hardware MII access");
 return ret;
}
