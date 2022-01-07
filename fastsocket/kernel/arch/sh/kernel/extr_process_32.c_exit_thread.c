
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ubc_pc; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 TYPE_2__* current ;
 int ubc_usercnt ;

void exit_thread(void)
{
 if (current->thread.ubc_pc) {
  current->thread.ubc_pc = 0;
  ubc_usercnt -= 1;
 }
}
