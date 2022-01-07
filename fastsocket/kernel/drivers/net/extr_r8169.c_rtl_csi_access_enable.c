
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rtl8169_private {int dummy; } ;


 int rtl_csi_read (struct rtl8169_private*,int) ;
 int rtl_csi_write (struct rtl8169_private*,int,int) ;

__attribute__((used)) static void rtl_csi_access_enable(struct rtl8169_private *tp, u32 bits)
{
 u32 csi;

 csi = rtl_csi_read(tp, 0x070c) & 0x00ffffff;
 rtl_csi_write(tp, 0x070c, csi | bits);
}
