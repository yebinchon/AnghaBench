
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_4__ {unsigned long* pio_write_status_addr; unsigned long pio_write_status_val; } ;
typedef TYPE_1__ pda_t ;
struct TYPE_5__ {int last_cpu; } ;


 unsigned long volatile SH_PIO_WRITE_STATUS_PENDING_WRITE_COUNT_MASK ;
 int cpu_relax () ;
 TYPE_1__* pdacpu (int ) ;
 TYPE_2__* task_thread_info (struct task_struct*) ;
 scalar_t__ unlikely (int) ;

void sn_migrate(struct task_struct *task)
{
 pda_t *last_pda = pdacpu(task_thread_info(task)->last_cpu);
 volatile unsigned long *adr = last_pda->pio_write_status_addr;
 unsigned long val = last_pda->pio_write_status_val;


 while (unlikely((*adr & SH_PIO_WRITE_STATUS_PENDING_WRITE_COUNT_MASK)
   != val))
  cpu_relax();
}
