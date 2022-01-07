
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {int dummy; } ;
struct pt_regs {int* gpr; } ;


 int SIGTRAP ;
 int THREAD_SIZE ;
 struct thread_info* current_thread_info () ;
 int kgdb_handle_exception (int ,int ,int ,struct pt_regs*) ;
 int memcpy (struct thread_info*,struct thread_info*,int) ;
 scalar_t__ user_mode (struct pt_regs*) ;

__attribute__((used)) static int kgdb_singlestep(struct pt_regs *regs)
{
 struct thread_info *thread_info, *exception_thread_info;

 if (user_mode(regs))
  return 0;
 thread_info = (struct thread_info *)(regs->gpr[1] & ~(THREAD_SIZE-1));
 exception_thread_info = current_thread_info();

 if (thread_info != exception_thread_info)
  memcpy(exception_thread_info, thread_info, sizeof *thread_info);

 kgdb_handle_exception(0, SIGTRAP, 0, regs);

 if (thread_info != exception_thread_info)
  memcpy(thread_info, exception_thread_info, sizeof *thread_info);

 return 1;
}
