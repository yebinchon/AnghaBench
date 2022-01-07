
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rtl8169_private {int dummy; } ;


 int ocp_read (struct rtl8169_private*,int,int ) ;
 int rtl8168_get_ocp_reg (struct rtl8169_private*) ;

__attribute__((used)) static int r8168dp_check_dash(struct rtl8169_private *tp)
{
 u16 reg = rtl8168_get_ocp_reg(tp);

 return (ocp_read(tp, 0x0f, reg) & 0x00008000) ? 1 : 0;
}
