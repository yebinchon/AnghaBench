
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl8169_private {int rtl_fw; } ;


 scalar_t__ IS_ERR (int ) ;
 int rtl_request_uncached_firmware (struct rtl8169_private*) ;

__attribute__((used)) static void rtl_request_firmware(struct rtl8169_private *tp)
{
 if (IS_ERR(tp->rtl_fw))
  rtl_request_uncached_firmware(tp);
}
