
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct nvbios_init {int nested; scalar_t__ offset; int bios; } ;
struct TYPE_2__ {int (* exec ) (struct nvbios_init*) ;} ;


 int EINVAL ;
 int error (char*,size_t) ;
 TYPE_1__* init_opcode ;
 size_t init_opcode_nr ;
 size_t nv_ro08 (int ,scalar_t__) ;
 int stub1 (struct nvbios_init*) ;

int
nvbios_exec(struct nvbios_init *init)
{
 init->nested++;
 while (init->offset) {
  u8 opcode = nv_ro08(init->bios, init->offset);
  if (opcode >= init_opcode_nr || !init_opcode[opcode].exec) {
   error("unknown opcode 0x%02x\n", opcode);
   return -EINVAL;
  }

  init_opcode[opcode].exec(init);
 }
 init->nested--;
 return 0;
}
