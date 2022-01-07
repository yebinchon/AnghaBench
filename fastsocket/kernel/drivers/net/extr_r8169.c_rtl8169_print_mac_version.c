
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int mac_version; } ;


 int dprintk (char*,int ) ;

__attribute__((used)) static void rtl8169_print_mac_version(struct rtl8169_private *tp)
{
 dprintk("mac_version = 0x%02x\n", tp->mac_version);
}
