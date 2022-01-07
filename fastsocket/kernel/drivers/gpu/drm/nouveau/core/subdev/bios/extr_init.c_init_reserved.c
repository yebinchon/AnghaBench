
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nvbios_init {int offset; int bios; } ;


 int nv_ro08 (int ,int) ;
 int trace (char*,int ) ;

__attribute__((used)) static void
init_reserved(struct nvbios_init *init)
{
 u8 opcode = nv_ro08(init->bios, init->offset);
 trace("RESERVED\t0x%02x\n", opcode);
 init->offset += 1;
}
