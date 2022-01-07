
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 int flush_altivec_to_thread (int ) ;
 int flush_fp_to_thread (int ) ;
 int flush_spe_to_thread (int ) ;
 int hard_irq_disable () ;

void save_processor_state(void)
{




 flush_fp_to_thread(current);
 flush_altivec_to_thread(current);
 flush_spe_to_thread(current);





}
