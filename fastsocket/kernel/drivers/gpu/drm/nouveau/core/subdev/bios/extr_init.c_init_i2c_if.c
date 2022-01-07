
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvbios_init {scalar_t__ offset; struct nouveau_bios* bios; } ;
struct nouveau_bios {int dummy; } ;


 int init_exec_force (struct nvbios_init*,int) ;
 int init_exec_set (struct nvbios_init*,int) ;
 int init_rdi2cr (struct nvbios_init*,int,int,int) ;
 int nv_ro08 (struct nouveau_bios*,scalar_t__) ;
 int trace (char*,int,int,int,int,int) ;

__attribute__((used)) static void
init_i2c_if(struct nvbios_init *init)
{
 struct nouveau_bios *bios = init->bios;
 u8 index = nv_ro08(bios, init->offset + 1);
 u8 addr = nv_ro08(bios, init->offset + 2);
 u8 reg = nv_ro08(bios, init->offset + 3);
 u8 mask = nv_ro08(bios, init->offset + 4);
 u8 data = nv_ro08(bios, init->offset + 5);
 u8 value;

 trace("I2C_IF\tI2C[0x%02x][0x%02x][0x%02x] & 0x%02x == 0x%02x\n",
       index, addr, reg, mask, data);
 init->offset += 6;
 init_exec_force(init, 1);

 value = init_rdi2cr(init, index, addr, reg);
 if ((value & mask) != data)
  init_exec_set(init, 0);

 init_exec_force(init, 0);
}
