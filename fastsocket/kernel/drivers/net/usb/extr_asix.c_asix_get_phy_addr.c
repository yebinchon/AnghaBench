
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int dummy; } ;
typedef int __le16 ;


 int AX_CMD_READ_PHY_ID ;
 int asix_read_cmd (struct usbnet*,int ,int ,int ,int,int*) ;
 int devdbg (struct usbnet*,char*,...) ;
 int deverr (struct usbnet*,char*,int) ;

__attribute__((used)) static inline int asix_get_phy_addr(struct usbnet *dev)
{
 u8 buf[2];
 int ret = asix_read_cmd(dev, AX_CMD_READ_PHY_ID, 0, 0, 2, buf);

 devdbg(dev, "asix_get_phy_addr()");

 if (ret < 0) {
  deverr(dev, "Error reading PHYID register: %02x", ret);
  goto out;
 }
 devdbg(dev, "asix_get_phy_addr() returning 0x%04x", *((__le16 *)buf));
 ret = buf[1];

out:
 return ret;
}
