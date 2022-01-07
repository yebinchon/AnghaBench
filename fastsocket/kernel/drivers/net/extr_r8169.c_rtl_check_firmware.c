
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_fw {int phy_action; } ;
struct rtl8169_private {struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int EINVAL ;
 int ifup ;
 int netif_err (struct rtl8169_private*,int ,struct net_device*,char*) ;
 scalar_t__ rtl_fw_data_ok (struct rtl8169_private*,struct net_device*,int *) ;
 int rtl_fw_format_ok (struct rtl8169_private*,struct rtl_fw*) ;

__attribute__((used)) static int rtl_check_firmware(struct rtl8169_private *tp, struct rtl_fw *rtl_fw)
{
 struct net_device *dev = tp->dev;
 int rc = -EINVAL;

 if (!rtl_fw_format_ok(tp, rtl_fw)) {
  netif_err(tp, ifup, dev, "invalid firwmare\n");
  goto out;
 }

 if (rtl_fw_data_ok(tp, dev, &rtl_fw->phy_action))
  rc = 0;
out:
 return rc;
}
