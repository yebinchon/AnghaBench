
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct nvbios_extdev_func {int dummy; } ;
struct nouveau_bios {int dummy; } ;


 int EINVAL ;
 int extdev_parse_entry (struct nouveau_bios*,int ,struct nvbios_extdev_func*) ;
 int nvbios_extdev_entry (struct nouveau_bios*,int,int *,int *) ;

int
nvbios_extdev_parse(struct nouveau_bios *bios, int idx,
      struct nvbios_extdev_func *func)
{
 u8 ver, len;
 u16 entry;

 if (!(entry = nvbios_extdev_entry(bios, idx, &ver, &len)))
  return -EINVAL;

 extdev_parse_entry(bios, entry, func);

 return 0;
}
