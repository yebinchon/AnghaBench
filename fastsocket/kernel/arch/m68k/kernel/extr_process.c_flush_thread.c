
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int FPU_IS_EMU ;
 int USER_DS ;
 int __USER_DS ;
 TYPE_2__* current ;
 int set_fs (int ) ;

void flush_thread(void)
{
 unsigned long zero = 0;
 set_fs(USER_DS);
 current->thread.fs = __USER_DS;
 if (!FPU_IS_EMU)
  asm volatile (".chip 68k/68881\n\t"
         "frestore %0@\n\t"
         ".chip 68k" : : "a" (&zero));
}
