
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {unsigned int pid; } ;


 scalar_t__ SAMPLE_BUFFER_SIZE ;
 TYPE_1__* current ;
 unsigned int instruction_pointer (struct pt_regs*) ;
 int prof_running ;
 scalar_t__ sample_buffer ;
 scalar_t__ sample_buffer_pos ;
 scalar_t__ user_mode (struct pt_regs*) ;

void
cris_profile_sample(struct pt_regs* regs)
{
 if (!prof_running)
  return;

 if (user_mode(regs))
  *(unsigned int*)sample_buffer_pos = current->pid;
 else
  *(unsigned int*)sample_buffer_pos = 0;

 *(unsigned int*)(sample_buffer_pos + 4) = instruction_pointer(regs);
 sample_buffer_pos += 8;

 if (sample_buffer_pos == sample_buffer + SAMPLE_BUFFER_SIZE)
  sample_buffer_pos = sample_buffer;
}
