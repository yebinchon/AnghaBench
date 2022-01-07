
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct thread_info {int tp_value; } ;
struct pt_regs {int* regs; } ;
struct TYPE_5__ {int linesz; } ;
struct TYPE_4__ {int linesz; } ;
struct TYPE_6__ {int cputype; TYPE_2__ icache; TYPE_1__ dcache; } ;




 unsigned int FUNC ;
 unsigned int OPCODE ;
 unsigned int RD ;
 unsigned int RDHWR ;
 unsigned int RT ;
 unsigned int SPEC3 ;
 int current ;
 TYPE_3__ current_cpu_data ;
 int min (int ,int ) ;
 int read_c0_count () ;
 int smp_processor_id () ;
 struct thread_info* task_thread_info (int ) ;

__attribute__((used)) static int simulate_rdhwr(struct pt_regs *regs, unsigned int opcode)
{
 struct thread_info *ti = task_thread_info(current);

 if ((opcode & OPCODE) == SPEC3 && (opcode & FUNC) == RDHWR) {
  int rd = (opcode & RD) >> 11;
  int rt = (opcode & RT) >> 16;
  switch (rd) {
  case 0:
   regs->regs[rt] = smp_processor_id();
   return 0;
  case 1:
   regs->regs[rt] = min(current_cpu_data.dcache.linesz,
          current_cpu_data.icache.linesz);
   return 0;
  case 2:
   regs->regs[rt] = read_c0_count();
   return 0;
  case 3:
   switch (current_cpu_data.cputype) {
   case 129:
   case 128:
    regs->regs[rt] = 1;
    break;
   default:
    regs->regs[rt] = 2;
   }
   return 0;
  case 29:
   regs->regs[rt] = ti->tp_value;
   return 0;
  default:
   return -1;
  }
 }


 return -1;
}
