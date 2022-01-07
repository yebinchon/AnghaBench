
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_3__ {int sa_flags; } ;
struct k_sigaction {TYPE_1__ sa; } ;
struct TYPE_4__ {unsigned long sas_ss_sp; unsigned long sas_ss_size; } ;


 int SA_ONSTACK ;
 TYPE_2__* current ;
 int on_sig_stack (unsigned long) ;
 unsigned long rdusp () ;

__attribute__((used)) static inline void *get_sigframe(struct k_sigaction *ka, struct pt_regs *regs,
     size_t frame_size)
{
 unsigned long usp;


 usp = rdusp();


 if (ka->sa.sa_flags & SA_ONSTACK) {
  if (!on_sig_stack(usp))
   usp = current->sas_ss_sp + current->sas_ss_size;
 }
 return (void *)((usp - frame_size) & -8UL);
}
