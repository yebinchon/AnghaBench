
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pt_regs {int dummy; } ;
struct op_counter_config {scalar_t__ enabled; } ;


 int CBE_PM_CTR_OVERFLOW_INTR (int ) ;
 int CBE_PM_TRACE_BUF_EMPTY ;
 int NUM_INTERVAL_CYC ;
 int NUM_SPUS_PER_NODE ;
 int cbe_cpu_to_node (int) ;
 int cbe_disable_pm (int) ;
 int cbe_enable_pm (int) ;
 int cbe_enable_pm_interrupts (int,int ,int ) ;
 int cbe_get_and_clear_pm_interrupts (int) ;
 int cbe_read_pm (int,int ) ;
 int cbe_read_trace_buffer (int,int*) ;
 int cbe_write_ctr (int,int ,int ) ;
 int cbe_write_pm (int,int ,int ) ;
 int cntr_lock ;
 int hdw_thread ;
 int oprof_spu_smpl_arry_lck ;
 int oprofile_running ;
 int pm_interval ;
 int * reset_value ;
 int smp_processor_id () ;
 int smp_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int spu_evnt_phys_spu_indx ;
 int spu_sync_buffer (int,int*,int) ;
 int trace_address ;
 int virt_cntr_inter_mask ;
 int write_pm_cntrl (int) ;

__attribute__((used)) static void cell_handle_interrupt_spu(struct pt_regs *regs,
          struct op_counter_config *ctr)
{
 u32 cpu, cpu_tmp;
 u64 trace_entry;
 u32 interrupt_mask;
 u64 trace_buffer[2];
 u64 last_trace_buffer;
 u32 sample;
 u32 trace_addr;
 unsigned long sample_array_lock_flags;
 int spu_num;
 unsigned long flags;




 cpu = smp_processor_id();
 spin_lock_irqsave(&cntr_lock, flags);

 cpu_tmp = cpu;
 cbe_disable_pm(cpu);

 interrupt_mask = cbe_get_and_clear_pm_interrupts(cpu);

 sample = 0xABCDEF;
 trace_entry = 0xfedcba;
 last_trace_buffer = 0xdeadbeaf;

 if ((oprofile_running == 1) && (interrupt_mask != 0)) {

  cbe_write_pm(cpu, pm_interval, 0);


  if ((interrupt_mask & CBE_PM_CTR_OVERFLOW_INTR(0))
      && ctr[0].enabled)




   cbe_write_ctr(cpu, 0, reset_value[0]);

  trace_addr = cbe_read_pm(cpu, trace_address);

  while (!(trace_addr & CBE_PM_TRACE_BUF_EMPTY)) {





   cbe_read_trace_buffer(cpu, trace_buffer);
   trace_addr = cbe_read_pm(cpu, trace_address);
  }
  trace_entry = trace_buffer[0]
   & 0x00000000FFFF0000;




  sample = trace_entry >> 14;
  last_trace_buffer = trace_buffer[0];

  spu_num = spu_evnt_phys_spu_indx
   + (cbe_cpu_to_node(cpu) * NUM_SPUS_PER_NODE);




  spin_lock_irqsave(&oprof_spu_smpl_arry_lck,
      sample_array_lock_flags);
  spu_sync_buffer(spu_num, &sample, 1);
  spin_unlock_irqrestore(&oprof_spu_smpl_arry_lck,
           sample_array_lock_flags);

  smp_wmb();





  cbe_write_pm(cpu, pm_interval, NUM_INTERVAL_CYC);
  cbe_enable_pm_interrupts(cpu, hdw_thread,
      virt_cntr_inter_mask);


  cbe_write_pm(cpu, trace_address, 0);
  cbe_write_pm(cpu, pm_interval, NUM_INTERVAL_CYC);
  write_pm_cntrl(cpu);
  cbe_enable_pm(cpu);
 }
 spin_unlock_irqrestore(&cntr_lock, flags);
}
