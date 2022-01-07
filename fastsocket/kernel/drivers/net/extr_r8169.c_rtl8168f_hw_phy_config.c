
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int dummy; } ;


 int rtl_w1w0_phy (struct rtl8169_private*,int,int,int) ;
 int rtl_writephy (struct rtl8169_private*,int,int) ;

__attribute__((used)) static void rtl8168f_hw_phy_config(struct rtl8169_private *tp)
{

 rtl_writephy(tp, 0x1f, 0x0005);
 rtl_writephy(tp, 0x05, 0x8b80);
 rtl_w1w0_phy(tp, 0x06, 0x0006, 0x0000);
 rtl_writephy(tp, 0x1f, 0x0000);


 rtl_writephy(tp, 0x1f, 0x0007);
 rtl_writephy(tp, 0x1e, 0x002d);
 rtl_w1w0_phy(tp, 0x18, 0x0010, 0x0000);
 rtl_writephy(tp, 0x1f, 0x0000);
 rtl_w1w0_phy(tp, 0x14, 0x8000, 0x0000);


 rtl_writephy(tp, 0x1f, 0x0005);
 rtl_writephy(tp, 0x05, 0x8b86);
 rtl_w1w0_phy(tp, 0x06, 0x0001, 0x0000);
 rtl_writephy(tp, 0x1f, 0x0000);
}
