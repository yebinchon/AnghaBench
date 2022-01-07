
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8169_private {int dummy; } ;


 int rtl_eri_read (struct rtl8169_private*,int,int) ;
 int rtl_eri_write (struct rtl8169_private*,int,int,int,int) ;

__attribute__((used)) static void rtl_w1w0_eri(struct rtl8169_private *tp, int addr, u32 mask, u32 p,
    u32 m, int type)
{
 u32 val;

 val = rtl_eri_read(tp, addr, type);
 rtl_eri_write(tp, addr, mask, (val & ~m) | p, type);
}
