
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_shim_info {int wl; } ;


 int brcms_intrsrestore (int ,int ) ;

void wlapi_intrsrestore(struct phy_shim_info *physhim, u32 macintmask)
{
 brcms_intrsrestore(physhim->wl, macintmask);
}
