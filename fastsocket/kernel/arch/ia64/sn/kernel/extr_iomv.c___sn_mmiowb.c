
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long* pio_write_status_addr; unsigned long pio_write_status_val; } ;


 unsigned long volatile SH_PIO_WRITE_STATUS_PENDING_WRITE_COUNT_MASK ;
 int cpu_relax () ;
 TYPE_1__* pda ;

void __sn_mmiowb(void)
{
 volatile unsigned long *adr = pda->pio_write_status_addr;
 unsigned long val = pda->pio_write_status_val;

 while ((*adr & SH_PIO_WRITE_STATUS_PENDING_WRITE_COUNT_MASK) != val)
  cpu_relax();
}
