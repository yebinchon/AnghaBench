
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int * addr; int * opcode; } ;


 scalar_t__ gdbstub_read_byte (int *,int *) ;
 TYPE_1__* step_bp ;

__attribute__((used)) static int __gdbstub_mark_bp(u8 *addr, int ix)
{
 if (addr < (u8 *) 0x70000000UL)
  return 0;

 if (addr < (u8 *) 0x80000000UL)
  goto okay;
 if (addr < (u8 *) 0x8c000000UL)
  return 0;

 if (addr < (u8 *) 0x94000000UL)
  goto okay;
 return 0;

okay:
 if (gdbstub_read_byte(addr + 0, &step_bp[ix].opcode[0]) < 0 ||
     gdbstub_read_byte(addr + 1, &step_bp[ix].opcode[1]) < 0)
  return 0;

 step_bp[ix].addr = addr;
 return 1;
}
