
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
typedef int opcode ;


 int access_process_vm (struct task_struct*,unsigned long,unsigned long*,int,int ) ;
 int panic (char*,unsigned long,unsigned long) ;

__attribute__((used)) static int insn_size(struct task_struct *child, unsigned long pc)
{
  unsigned long opcode;
  int copied;
  int opsize = 0;


  copied = access_process_vm(child, pc, &opcode, sizeof(opcode), 0);
  if (copied != sizeof(opcode))
    return 0;

  switch ((opcode & 0x0f00) >> 8) {
  case 0x0:
  case 0x9:
  case 0xb:
   opsize = 2;
   break;
  case 0xe:
  case 0xf:
   opsize = 6;
   break;
  case 0xd:

   if ((opcode & 0xff) == 0xff)
    opsize = 4;
   else
    opsize = 6;
   break;
  default:
   panic("ERROR: Couldn't find size of opcode 0x%lx at 0x%lx\n",
  opcode, pc);
  }

  return opsize;
}
