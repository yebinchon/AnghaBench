
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_shim_info {int wl; } ;


 int brcms_intrson (int ) ;

void wlapi_intrson(struct phy_shim_info *physhim)
{
 brcms_intrson(physhim->wl);
}
