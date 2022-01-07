
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_bios {int size; int* data; } ;


 int min_t (int ,int,int) ;
 int nv_info (struct nouveau_bios*,char*) ;
 scalar_t__ nvbios_checksum (int*,int ) ;
 int u32 ;

__attribute__((used)) static int
nouveau_bios_score(struct nouveau_bios *bios, const bool writeable)
{
 if (bios->size < 3 || !bios->data || bios->data[0] != 0x55 ||
   bios->data[1] != 0xAA) {
  nv_info(bios, "... signature not found\n");
  return 0;
 }

 if (nvbios_checksum(bios->data,
   min_t(u32, bios->data[2] * 512, bios->size))) {
  nv_info(bios, "... checksum invalid\n");

  return writeable ? 2 : 1;
 }

 nv_info(bios, "... appears to be valid\n");
 return 3;
}
