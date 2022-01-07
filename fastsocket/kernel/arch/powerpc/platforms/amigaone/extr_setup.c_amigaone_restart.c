
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_IP ;
 int SPRN_SRR0 ;
 int SPRN_SRR1 ;
 int __flush_disable_L1 () ;
 int local_irq_disable () ;
 int mtspr (int ,int) ;

void amigaone_restart(char *cmd)
{
 local_irq_disable();


 __flush_disable_L1();


 mtspr(SPRN_SRR0, 0xfff00100);
 mtspr(SPRN_SRR1, MSR_IP);


 __asm__ __volatile__("rfi" : : : "memory");


 while (1);
}
