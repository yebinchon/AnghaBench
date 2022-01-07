
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int* hcall_status; TYPE_1__* hcalls; } ;
struct TYPE_3__ {unsigned long arg0; unsigned long arg1; unsigned long arg2; unsigned long arg3; unsigned long arg4; } ;


 unsigned int LHCALL_RING_SIZE ;
 int kvm_hypercall4 (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;
 TYPE_2__ lguest_data ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int wmb () ;

__attribute__((used)) static void async_hcall(unsigned long call, unsigned long arg1,
   unsigned long arg2, unsigned long arg3,
   unsigned long arg4)
{

 static unsigned int next_call;
 unsigned long flags;






 local_irq_save(flags);
 if (lguest_data.hcall_status[next_call] != 0xFF) {

  kvm_hypercall4(call, arg1, arg2, arg3, arg4);
 } else {
  lguest_data.hcalls[next_call].arg0 = call;
  lguest_data.hcalls[next_call].arg1 = arg1;
  lguest_data.hcalls[next_call].arg2 = arg2;
  lguest_data.hcalls[next_call].arg3 = arg3;
  lguest_data.hcalls[next_call].arg4 = arg4;

  wmb();
  lguest_data.hcall_status[next_call] = 0;
  if (++next_call == LHCALL_RING_SIZE)
   next_call = 0;
 }
 local_irq_restore(flags);
}
