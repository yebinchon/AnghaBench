
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * fpr; scalar_t__ fcr31; } ;
struct TYPE_5__ {TYPE_1__ fpu; } ;
struct TYPE_6__ {TYPE_2__ thread; } ;


 int SIGNALLING_NAN ;
 TYPE_3__* current ;
 int printk (char*) ;

void fpu_emulator_init_fpu(void)
{
 static int first = 1;
 int i;

 if (first) {
  first = 0;
  printk("Algorithmics/MIPS FPU Emulator v1.5\n");
 }

 current->thread.fpu.fcr31 = 0;
 for (i = 0; i < 32; i++) {
  current->thread.fpu.fpr[i] = SIGNALLING_NAN;
 }
}
