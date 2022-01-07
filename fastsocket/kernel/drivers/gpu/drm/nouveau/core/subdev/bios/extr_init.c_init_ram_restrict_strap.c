
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct nvbios_init {int ramcfg; TYPE_2__* bios; } ;
struct TYPE_3__ {int major; } ;
struct TYPE_4__ {TYPE_1__ version; } ;


 int init_rd32 (struct nvbios_init*,int) ;

__attribute__((used)) static u8
init_ram_restrict_strap(struct nvbios_init *init)
{
 if (!init->ramcfg || init->bios->version.major < 0x70)
  init->ramcfg = init_rd32(init, 0x101000);
 return (init->ramcfg & 0x00000003c) >> 2;
}
