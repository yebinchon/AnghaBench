
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int val_in; int val_out; } ;


 int EOPNOTSUPP ;



 int rtl_readphy (struct rtl8169_private*,int) ;
 int rtl_writephy (struct rtl8169_private*,int,int ) ;

__attribute__((used)) static int rtl_xmii_ioctl(struct rtl8169_private *tp,
     struct mii_ioctl_data *data, int cmd)
{
 switch (cmd) {
 case 130:
  data->phy_id = 32;
  return 0;

 case 129:
  data->val_out = rtl_readphy(tp, data->reg_num & 0x1f);
  return 0;

 case 128:
  rtl_writephy(tp, data->reg_num & 0x1f, data->val_in);
  return 0;
 }
 return -EOPNOTSUPP;
}
