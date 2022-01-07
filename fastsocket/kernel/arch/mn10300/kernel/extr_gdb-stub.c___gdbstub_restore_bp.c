
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* opcode; int * addr; } ;


 int gdbstub_flush_caches ;
 int gdbstub_write_byte (scalar_t__,int *) ;
 TYPE_1__* step_bp ;

__attribute__((used)) static inline void __gdbstub_restore_bp(void)
{
 if (step_bp[0].addr)
  gdbstub_write_byte(step_bp[0].opcode[0], step_bp[0].addr + 0);
 if (step_bp[1].addr)
  gdbstub_write_byte(step_bp[1].opcode[0], step_bp[1].addr + 0);


 gdbstub_flush_caches = 1;

 step_bp[0].addr = ((void*)0);
 step_bp[0].opcode[0] = 0;
 step_bp[0].opcode[1] = 0;
 step_bp[1].addr = ((void*)0);
 step_bp[1].opcode[0] = 0;
 step_bp[1].opcode[1] = 0;
}
