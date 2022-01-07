
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int rtl_ephy_write (struct rtl8169_private*,int,int) ;
 int rtl_hw_start_8102e_2 (struct rtl8169_private*) ;

__attribute__((used)) static void rtl_hw_start_8102e_3(struct rtl8169_private *tp)
{
 rtl_hw_start_8102e_2(tp);

 rtl_ephy_write(tp, 0x03, 0xc2f9);
}
