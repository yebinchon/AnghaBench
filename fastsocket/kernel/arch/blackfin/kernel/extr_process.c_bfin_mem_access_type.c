
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASYNC_BANK0_BASE ;
 int ASYNC_BANK0_SIZE ;
 int ASYNC_BANK1_BASE ;
 int ASYNC_BANK1_SIZE ;
 int ASYNC_BANK2_BASE ;
 int ASYNC_BANK2_SIZE ;
 int ASYNC_BANK3_BASE ;
 int ASYNC_BANK3_SIZE ;
 int BFIN_MEM_ACCESS_CORE ;
 int BFIN_MEM_ACCESS_CORE_ONLY ;
 int BFIN_MEM_ACCESS_DMA ;
 int BFIN_MEM_ACCESS_IDMA ;
 int BFIN_MEM_ACCESS_ITEST ;
 int BOOT_ROM_LENGTH ;
 int BOOT_ROM_START ;
 int COREB_L1_CODE_LENGTH ;
 int COREB_L1_CODE_START ;
 int COREB_L1_DATA_A_LENGTH ;
 int COREB_L1_DATA_A_START ;
 int COREB_L1_DATA_B_LENGTH ;
 int COREB_L1_DATA_B_START ;
 int COREB_L1_SCRATCH_START ;
 int EFAULT ;
 int FIXED_CODE_START ;
 int IN_ASYNC (int,int) ;
 int L1_CODE_LENGTH ;
 int L1_CODE_START ;
 int L1_DATA_A_LENGTH ;
 int L1_DATA_A_START ;
 int L1_DATA_B_LENGTH ;
 int L1_DATA_B_START ;
 int L1_ROM_LENGTH ;
 int L1_ROM_START ;
 int L1_SCRATCH_LENGTH ;
 int L1_SCRATCH_START ;
 int L2_LENGTH ;
 int L2_START ;
 unsigned long SYSMMR_BASE ;
 unsigned long ULONG_MAX ;
 scalar_t__ in_mem (unsigned long,unsigned long,int ,int ) ;
 scalar_t__ in_mem_const (unsigned long,unsigned long,int ,int ) ;
 int physical_mem_end ;
 int raw_smp_processor_id () ;

int bfin_mem_access_type(unsigned long addr, unsigned long size)
{
 int cpu = raw_smp_processor_id();


 if (addr > ULONG_MAX - size)
  return -EFAULT;

 if (in_mem(addr, size, FIXED_CODE_START, physical_mem_end))
  return BFIN_MEM_ACCESS_CORE;

 if (in_mem_const(addr, size, L1_CODE_START, L1_CODE_LENGTH))
  return cpu == 0 ? BFIN_MEM_ACCESS_ITEST : BFIN_MEM_ACCESS_IDMA;
 if (in_mem_const(addr, size, L1_SCRATCH_START, L1_SCRATCH_LENGTH))
  return cpu == 0 ? BFIN_MEM_ACCESS_CORE_ONLY : -EFAULT;
 if (in_mem_const(addr, size, L1_DATA_A_START, L1_DATA_A_LENGTH))
  return cpu == 0 ? BFIN_MEM_ACCESS_CORE : BFIN_MEM_ACCESS_IDMA;
 if (in_mem_const(addr, size, L1_DATA_B_START, L1_DATA_B_LENGTH))
  return cpu == 0 ? BFIN_MEM_ACCESS_CORE : BFIN_MEM_ACCESS_IDMA;
 if (in_mem_const(addr, size, L2_START, L2_LENGTH))
  return BFIN_MEM_ACCESS_CORE;

 if (addr >= SYSMMR_BASE)
  return BFIN_MEM_ACCESS_CORE_ONLY;




 if (in_mem_const(addr, size, ASYNC_BANK0_BASE, ASYNC_BANK0_SIZE))
  return IN_ASYNC(0, 0);
 if (in_mem_const(addr, size, ASYNC_BANK1_BASE, ASYNC_BANK1_SIZE))
  return IN_ASYNC(1, 0);
 if (in_mem_const(addr, size, ASYNC_BANK2_BASE, ASYNC_BANK2_SIZE))
  return IN_ASYNC(2, 1);
 if (in_mem_const(addr, size, ASYNC_BANK3_BASE, ASYNC_BANK3_SIZE))
  return IN_ASYNC(3, 1);

 if (in_mem_const(addr, size, BOOT_ROM_START, BOOT_ROM_LENGTH))
  return BFIN_MEM_ACCESS_CORE;
 if (in_mem_const(addr, size, L1_ROM_START, L1_ROM_LENGTH))
  return BFIN_MEM_ACCESS_DMA;

 return -EFAULT;
}
