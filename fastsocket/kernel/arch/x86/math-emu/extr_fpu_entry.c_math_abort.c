
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct math_emu_info {int dummy; } ;
struct TYPE_4__ {int trap_no; scalar_t__ error_code; } ;
struct TYPE_5__ {TYPE_1__ thread; } ;


 int FPU_EIP ;
 int FPU_ORIG_EIP ;
 int RE_ENTRANT_CHECK_OFF ;
 TYPE_2__* current ;
 int printk (char*) ;
 int send_sig (unsigned int,TYPE_2__*,int) ;

void math_abort(struct math_emu_info *info, unsigned int signal)
{
 FPU_EIP = FPU_ORIG_EIP;
 current->thread.trap_no = 16;
 current->thread.error_code = 0;
 send_sig(signal, current, 1);
 RE_ENTRANT_CHECK_OFF;
      __asm__("movl %0,%%esp ; ret": :"g"(((long)info) - 4));



}
