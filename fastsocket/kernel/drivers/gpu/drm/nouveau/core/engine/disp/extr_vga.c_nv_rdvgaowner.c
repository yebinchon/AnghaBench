
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ card_type; int chipset; } ;


 scalar_t__ NV_50 ;
 TYPE_1__* nv_device (void*) ;
 int nv_error (void*,char*) ;
 int nv_rd32 (void*,int) ;
 int nv_rdvgac (void*,int,int) ;

u8
nv_rdvgaowner(void *obj)
{
 if (nv_device(obj)->card_type < NV_50) {
  if (nv_device(obj)->chipset == 0x11) {
   u32 tied = nv_rd32(obj, 0x001084) & 0x10000000;
   if (tied == 0) {
    u8 slA = nv_rdvgac(obj, 0, 0x28) & 0x80;
    u8 tvA = nv_rdvgac(obj, 0, 0x33) & 0x01;
    u8 slB = nv_rdvgac(obj, 1, 0x28) & 0x80;
    u8 tvB = nv_rdvgac(obj, 1, 0x33) & 0x01;
    if (slA && !tvA) return 0x00;
    if (slB && !tvB) return 0x03;
    if (slA) return 0x00;
    if (slB) return 0x03;
    return 0x00;
   }
   return 0x04;
  }

  return nv_rdvgac(obj, 0, 0x44);
 }

 nv_error(obj, "rdvgaowner after nv4x\n");
 return 0x00;
}
