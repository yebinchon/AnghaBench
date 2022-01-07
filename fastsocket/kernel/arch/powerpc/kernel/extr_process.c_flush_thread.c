
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dbcr0; scalar_t__ dabr; } ;
struct TYPE_4__ {TYPE_1__ thread; } ;


 int DBSR_DAC1R ;
 int DBSR_DAC1W ;
 TYPE_2__* current ;
 int discard_lazy_cpu_state () ;
 int set_dabr (int ) ;

void flush_thread(void)
{
 discard_lazy_cpu_state();

 if (current->thread.dabr) {
  current->thread.dabr = 0;
  set_dabr(0);




 }
}
