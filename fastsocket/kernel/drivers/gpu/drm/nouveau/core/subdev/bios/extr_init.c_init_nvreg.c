
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nvbios_init {int bios; } ;
struct TYPE_2__ {scalar_t__ card_type; } ;


 scalar_t__ NV_50 ;
 int init_crtc (struct nvbios_init*) ;
 int init_link (struct nvbios_init*) ;
 int init_or (struct nvbios_init*) ;
 TYPE_1__* nv_device (int ) ;
 int warn (char*,int) ;

__attribute__((used)) static inline u32
init_nvreg(struct nvbios_init *init, u32 reg)
{






 reg &= ~0x00000003;




 if (nv_device(init->bios)->card_type >= NV_50) {
  if (reg & 0x80000000) {
   reg += init_crtc(init) * 0x800;
   reg &= ~0x80000000;
  }

  if (reg & 0x40000000) {
   reg += init_or(init) * 0x800;
   reg &= ~0x40000000;
   if (reg & 0x20000000) {
    reg += init_link(init) * 0x80;
    reg &= ~0x20000000;
   }
  }
 }

 if (reg & ~0x00fffffc)
  warn("unknown bits in register 0x%08x\n", reg);
 return reg;
}
