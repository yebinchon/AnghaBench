
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;


 void* aperture_alloc ;
 void* aperture_order ;
 int fix_up_north_bridges ;

void set_up_gart_resume(u32 aper_order, u32 aper_alloc)
{
 fix_up_north_bridges = 1;
 aperture_order = aper_order;
 aperture_alloc = aper_alloc;
}
