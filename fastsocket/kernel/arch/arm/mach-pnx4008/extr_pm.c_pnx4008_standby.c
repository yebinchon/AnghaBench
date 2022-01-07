
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SRAM_VA ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int flush_cache_all () ;
 int local_fiq_disable () ;
 int local_fiq_enable () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int memcpy (void*,void*,int ) ;
 int pll4_clk ;
 void* pnx4008_cpu_standby ;
 int pnx4008_cpu_standby_sz ;
 void* saved_sram ;

__attribute__((used)) static inline void pnx4008_standby(void)
{
 void (*pnx4008_cpu_standby_ptr) (void);

 local_irq_disable();
 local_fiq_disable();

 clk_disable(pll4_clk);


 memcpy(saved_sram, (void *)SRAM_VA, pnx4008_cpu_standby_sz);



 flush_cache_all();


 memcpy((void *)SRAM_VA, pnx4008_cpu_standby, pnx4008_cpu_standby_sz);


 pnx4008_cpu_standby_ptr = (void *)SRAM_VA;
 pnx4008_cpu_standby_ptr();


 memcpy((void *)SRAM_VA, saved_sram, pnx4008_cpu_standby_sz);

 clk_enable(pll4_clk);

 local_fiq_enable();
 local_irq_enable();
}
