
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBUSY ;
 int NR_IRQS_LEGACY ;
 int arch_enable_uv_irq (char*,int,int,int,unsigned long,int) ;
 int create_irq_nr (int ,int ) ;
 int destroy_irq (int) ;
 int uv_blade_to_memory_nid (int) ;
 int uv_set_irq_2_mmr_info (int,unsigned long,int) ;

int uv_setup_irq(char *irq_name, int cpu, int mmr_blade,
   unsigned long mmr_offset, int limit)
{
 int irq, ret;

 irq = create_irq_nr(NR_IRQS_LEGACY, uv_blade_to_memory_nid(mmr_blade));

 if (irq <= 0)
  return -EBUSY;

 ret = arch_enable_uv_irq(irq_name, irq, cpu, mmr_blade, mmr_offset,
  limit);
 if (ret == irq)
  uv_set_irq_2_mmr_info(irq, mmr_offset, mmr_blade);
 else
  destroy_irq(irq);

 return ret;
}
