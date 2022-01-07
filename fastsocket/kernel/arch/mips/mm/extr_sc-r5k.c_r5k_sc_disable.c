
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R5K_CONF_SE ;
 int blast_r5000_scache () ;
 int clear_c0_config (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;

__attribute__((used)) static void r5k_sc_disable(void)
{
        unsigned long flags;

 local_irq_save(flags);
 blast_r5000_scache();
 clear_c0_config(R5K_CONF_SE);
 local_irq_restore(flags);
}
