
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_shim_info {int wlc; } ;


 int brcms_c_enable_mac (int ) ;

void wlapi_enable_mac(struct phy_shim_info *physhim)
{
 brcms_c_enable_mac(physhim->wlc);
}
