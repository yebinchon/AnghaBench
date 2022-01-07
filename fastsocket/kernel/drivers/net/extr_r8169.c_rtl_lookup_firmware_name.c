
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtl8169_private {size_t mac_version; } ;
struct TYPE_2__ {char const* fw_name; } ;


 TYPE_1__* rtl_chip_infos ;

__attribute__((used)) static const char *rtl_lookup_firmware_name(struct rtl8169_private *tp)
{
 return rtl_chip_infos[tp->mac_version].fw_name;
}
