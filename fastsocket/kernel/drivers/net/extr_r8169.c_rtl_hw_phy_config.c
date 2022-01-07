
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int mac_version; } ;
struct net_device {int dummy; } ;
 struct rtl8169_private* netdev_priv (struct net_device*) ;
 int rtl8102e_hw_phy_config (struct rtl8169_private*) ;
 int rtl8105e_hw_phy_config (struct rtl8169_private*) ;
 int rtl8106e_hw_phy_config (struct rtl8169_private*) ;
 int rtl8168bb_hw_phy_config (struct rtl8169_private*) ;
 int rtl8168bef_hw_phy_config (struct rtl8169_private*) ;
 int rtl8168c_1_hw_phy_config (struct rtl8169_private*) ;
 int rtl8168c_2_hw_phy_config (struct rtl8169_private*) ;
 int rtl8168c_3_hw_phy_config (struct rtl8169_private*) ;
 int rtl8168c_4_hw_phy_config (struct rtl8169_private*) ;
 int rtl8168cp_1_hw_phy_config (struct rtl8169_private*) ;
 int rtl8168cp_2_hw_phy_config (struct rtl8169_private*) ;
 int rtl8168d_1_hw_phy_config (struct rtl8169_private*) ;
 int rtl8168d_2_hw_phy_config (struct rtl8169_private*) ;
 int rtl8168d_3_hw_phy_config (struct rtl8169_private*) ;
 int rtl8168d_4_hw_phy_config (struct rtl8169_private*) ;
 int rtl8168e_1_hw_phy_config (struct rtl8169_private*) ;
 int rtl8168e_2_hw_phy_config (struct rtl8169_private*) ;
 int rtl8168f_1_hw_phy_config (struct rtl8169_private*) ;
 int rtl8168f_2_hw_phy_config (struct rtl8169_private*) ;
 int rtl8168g_1_hw_phy_config (struct rtl8169_private*) ;
 int rtl8169_print_mac_version (struct rtl8169_private*) ;
 int rtl8169s_hw_phy_config (struct rtl8169_private*) ;
 int rtl8169sb_hw_phy_config (struct rtl8169_private*) ;
 int rtl8169scd_hw_phy_config (struct rtl8169_private*) ;
 int rtl8169sce_hw_phy_config (struct rtl8169_private*) ;
 int rtl8402_hw_phy_config (struct rtl8169_private*) ;
 int rtl8411_hw_phy_config (struct rtl8169_private*) ;

__attribute__((used)) static void rtl_hw_phy_config(struct net_device *dev)
{
 struct rtl8169_private *tp = netdev_priv(dev);

 rtl8169_print_mac_version(tp);

 switch (tp->mac_version) {
 case 163:
  break;
 case 162:
 case 161:
  rtl8169s_hw_phy_config(tp);
  break;
 case 160:
  rtl8169sb_hw_phy_config(tp);
  break;
 case 159:
  rtl8169scd_hw_phy_config(tp);
  break;
 case 158:
  rtl8169sce_hw_phy_config(tp);
  break;
 case 157:
 case 156:
 case 155:
  rtl8102e_hw_phy_config(tp);
  break;
 case 154:
  rtl8168bb_hw_phy_config(tp);
  break;
 case 153:
  rtl8168bef_hw_phy_config(tp);
  break;
 case 152:
  rtl8168bef_hw_phy_config(tp);
  break;
 case 151:
  rtl8168cp_1_hw_phy_config(tp);
  break;
 case 150:
  rtl8168c_1_hw_phy_config(tp);
  break;
 case 149:
  rtl8168c_2_hw_phy_config(tp);
  break;
 case 148:
  rtl8168c_3_hw_phy_config(tp);
  break;
 case 147:
  rtl8168c_4_hw_phy_config(tp);
  break;
 case 146:
 case 145:
  rtl8168cp_2_hw_phy_config(tp);
  break;
 case 144:
  rtl8168d_1_hw_phy_config(tp);
  break;
 case 143:
  rtl8168d_2_hw_phy_config(tp);
  break;
 case 142:
  rtl8168d_3_hw_phy_config(tp);
  break;
 case 141:
  rtl8168d_4_hw_phy_config(tp);
  break;
 case 140:
 case 139:
  rtl8105e_hw_phy_config(tp);
  break;
 case 138:

  break;
 case 137:
 case 136:
  rtl8168e_1_hw_phy_config(tp);
  break;
 case 135:
  rtl8168e_2_hw_phy_config(tp);
  break;
 case 134:
  rtl8168f_1_hw_phy_config(tp);
  break;
 case 133:
  rtl8168f_2_hw_phy_config(tp);
  break;

 case 132:
  rtl8402_hw_phy_config(tp);
  break;

 case 131:
  rtl8411_hw_phy_config(tp);
  break;

 case 130:
  rtl8106e_hw_phy_config(tp);
  break;

 case 129:
  rtl8168g_1_hw_phy_config(tp);
  break;

 case 128:
 default:
  break;
 }
}
