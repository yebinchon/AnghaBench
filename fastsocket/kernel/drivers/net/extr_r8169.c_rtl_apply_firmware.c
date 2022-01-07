
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_fw {int dummy; } ;
struct rtl8169_private {struct rtl_fw* rtl_fw; } ;


 int IS_ERR_OR_NULL (struct rtl_fw*) ;
 int rtl_phy_write_fw (struct rtl8169_private*,struct rtl_fw*) ;

__attribute__((used)) static void rtl_apply_firmware(struct rtl8169_private *tp)
{
 struct rtl_fw *rtl_fw = tp->rtl_fw;


 if (!IS_ERR_OR_NULL(rtl_fw))
  rtl_phy_write_fw(tp, rtl_fw);
}
