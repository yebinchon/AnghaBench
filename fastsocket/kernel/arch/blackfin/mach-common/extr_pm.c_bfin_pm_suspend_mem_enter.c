
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 int FREQ ;
 int GFP_KERNEL ;
 int GPWE ;
 scalar_t__ L1_CODE_LENGTH ;
 scalar_t__ L1_DATA_A_LENGTH ;
 scalar_t__ L1_DATA_B_LENGTH ;
 scalar_t__ L1_SCRATCH_LENGTH ;
 int PHYWE ;
 int SCKELOW ;
 int _disable_dcplb () ;
 int _disable_icplb () ;
 int _enable_dcplb () ;
 int _enable_icplb () ;
 int bf53x_resume_l1_mem (unsigned char*) ;
 int bf53x_suspend_l1_mem (unsigned char*) ;
 int bfin_gpio_pm_hibernate_restore () ;
 int bfin_gpio_pm_hibernate_suspend () ;
 int bfin_read_VR_CTL () ;
 int blackfin_dma_resume () ;
 int blackfin_dma_suspend () ;
 int do_hibernate (int) ;
 int flushinv_all_dcache () ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (scalar_t__,int ) ;
 int local_irq_restore_hw (unsigned long) ;
 int local_irq_save_hw (unsigned long) ;
 int panic (char*) ;
 int vr_wakeup ;

int bfin_pm_suspend_mem_enter(void)
{
 unsigned long flags;
 int wakeup, ret;

 unsigned char *memptr = kmalloc(L1_CODE_LENGTH + L1_DATA_A_LENGTH
      + L1_DATA_B_LENGTH + L1_SCRATCH_LENGTH,
       GFP_KERNEL);

 if (memptr == ((void*)0)) {
  panic("bf53x_suspend_l1_mem malloc failed");
  return -ENOMEM;
 }

 wakeup = bfin_read_VR_CTL() & ~FREQ;
 wakeup |= SCKELOW;
 local_irq_save_hw(flags);

 ret = blackfin_dma_suspend();

 if (ret) {
  local_irq_restore_hw(flags);
  kfree(memptr);
  return ret;
 }

 bfin_gpio_pm_hibernate_suspend();




 _disable_dcplb();
 _disable_icplb();
 bf53x_suspend_l1_mem(memptr);

 do_hibernate(wakeup | vr_wakeup);

 bf53x_resume_l1_mem(memptr);

 _enable_icplb();
 _enable_dcplb();

 bfin_gpio_pm_hibernate_restore();
 blackfin_dma_resume();

 local_irq_restore_hw(flags);
 kfree(memptr);

 return 0;
}
