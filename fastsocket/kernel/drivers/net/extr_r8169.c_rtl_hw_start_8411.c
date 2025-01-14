
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;
struct ephy_info {int member_0; int member_1; int member_2; } ;


 int ARRAY_SIZE (struct ephy_info const*) ;
 int ERIAR_EXGMAC ;
 int ERIAR_MASK_0011 ;
 int rtl_ephy_init (struct rtl8169_private*,struct ephy_info const*,int ) ;
 int rtl_hw_start_8168f (struct rtl8169_private*) ;
 int rtl_w1w0_eri (struct rtl8169_private*,int,int ,int,int,int ) ;

__attribute__((used)) static void rtl_hw_start_8411(struct rtl8169_private *tp)
{
 static const struct ephy_info e_info_8168f_1[] = {
  { 0x06, 0x00c0, 0x0020 },
  { 0x0f, 0xffff, 0x5200 },
  { 0x1e, 0x0000, 0x4000 },
  { 0x19, 0x0000, 0x0224 }
 };

 rtl_hw_start_8168f(tp);

 rtl_ephy_init(tp, e_info_8168f_1, ARRAY_SIZE(e_info_8168f_1));

 rtl_w1w0_eri(tp, 0x0d4, ERIAR_MASK_0011, 0x0c00, 0x0000, ERIAR_EXGMAC);
}
