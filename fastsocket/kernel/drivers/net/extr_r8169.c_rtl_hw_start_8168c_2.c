
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct ephy_info {int member_0; int member_1; int member_2; } ;


 int ARRAY_SIZE (struct ephy_info const*) ;
 int __rtl_hw_start_8168cp (struct rtl8169_private*) ;
 int rtl_csi_access_enable_2 (struct rtl8169_private*) ;
 int rtl_ephy_init (struct rtl8169_private*,struct ephy_info const*,int ) ;

__attribute__((used)) static void rtl_hw_start_8168c_2(struct rtl8169_private *tp)
{
 static const struct ephy_info e_info_8168c_2[] = {
  { 0x01, 0, 0x0001 },
  { 0x03, 0x0400, 0x0220 }
 };

 rtl_csi_access_enable_2(tp);

 rtl_ephy_init(tp, e_info_8168c_2, ARRAY_SIZE(e_info_8168c_2));

 __rtl_hw_start_8168cp(tp);
}
