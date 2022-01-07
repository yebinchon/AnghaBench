
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int (* phy_reset_enable ) (struct rtl8169_private*) ;} ;
struct net_device {int dummy; } ;


 int rtl_msleep_loop_wait_low (struct rtl8169_private*,int *,int,int) ;
 int rtl_phy_reset_cond ;
 int stub1 (struct rtl8169_private*) ;

__attribute__((used)) static void rtl8169_phy_reset(struct net_device *dev,
         struct rtl8169_private *tp)
{
 tp->phy_reset_enable(tp);
 rtl_msleep_loop_wait_low(tp, &rtl_phy_reset_cond, 1, 100);
}
