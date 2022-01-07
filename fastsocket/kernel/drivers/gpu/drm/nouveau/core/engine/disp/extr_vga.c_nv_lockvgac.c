
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int chipset; } ;


 TYPE_1__* nv_device (void*) ;
 int nv_rd32 (void*,int) ;
 int nv_rdvgac (void*,int ,int) ;
 int nv_wrvgac (void*,int,int,int) ;

bool
nv_lockvgac(void *obj, bool lock)
{
 bool locked = !nv_rdvgac(obj, 0, 0x1f);
 u8 data = lock ? 0x99 : 0x57;
 nv_wrvgac(obj, 0, 0x1f, data);
 if (nv_device(obj)->chipset == 0x11) {
  if (!(nv_rd32(obj, 0x001084) & 0x10000000))
   nv_wrvgac(obj, 1, 0x1f, data);
 }
 return locked;
}
