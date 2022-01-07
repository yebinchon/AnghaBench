
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct usbnet {int dummy; } ;
typedef int __le16 ;


 int AX_CMD_READ_RX_CTL ;
 int asix_read_cmd (struct usbnet*,int ,int ,int ,int,int *) ;
 int deverr (struct usbnet*,char*,int) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static u16 asix_read_rx_ctl(struct usbnet *dev)
{
 __le16 v;
 int ret = asix_read_cmd(dev, AX_CMD_READ_RX_CTL, 0, 0, 2, &v);

 if (ret < 0) {
  deverr(dev, "Error reading RX_CTL register: %02x", ret);
  goto out;
 }
 ret = le16_to_cpu(v);
out:
 return ret;
}
