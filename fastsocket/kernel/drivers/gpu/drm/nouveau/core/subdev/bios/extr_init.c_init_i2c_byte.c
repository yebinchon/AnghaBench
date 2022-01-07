
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;


 int init_rdi2cr (struct nvbios_init*,int,int,int) ;
 int init_wri2cr (struct nvbios_init*,int,int,int,int) ;
 int nv_ro08 (struct nouveau_bios*,scalar_t__) ;
 int trace (char*,int,int,...) ;

__attribute__((used)) static void
init_i2c_byte(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;
 u8 index = nv_ro08(bios, init->offset + 1);
 u8 addr = nv_ro08(bios, init->offset + 2) >> 1;
 u8 count = nv_ro08(bios, init->offset + 3);

 trace("I2C_BYTE\tI2C[0x%02x][0x%02x]\n", index, addr);
 init->offset += 4;

 while (count--) {
  u8 reg = nv_ro08(bios, init->offset + 0);
  u8 mask = nv_ro08(bios, init->offset + 1);
  u8 data = nv_ro08(bios, init->offset + 2);
  int val;

  trace("\t[0x%02x] &= 0x%02x |= 0x%02x\n", reg, mask, data);
  init->offset += 3;

  val = init_rdi2cr(init, index, addr, reg);
  if (val < 0)
   continue;
  init_wri2cr(init, index, addr, reg, (val & mask) | data);
 }
}
