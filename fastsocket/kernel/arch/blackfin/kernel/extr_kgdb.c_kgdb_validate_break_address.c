
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASYNC_BANK0_BASE ;
 int ASYNC_BANK_SIZE ;
 scalar_t__ BREAK_INSTR_SIZE ;
 int COREB_L1_CODE_START ;
 int EFAULT ;
 scalar_t__ IN_MEM (unsigned long,scalar_t__,int ,int ) ;
 int L1_CODE_LENGTH ;
 int L1_CODE_START ;
 int L2_LENGTH ;
 int L2_START ;
 scalar_t__ physical_mem_end ;
 int raw_smp_processor_id () ;

int kgdb_validate_break_address(unsigned long addr)
{
 int cpu = raw_smp_processor_id();

 if (addr >= 0x1000 && (addr + BREAK_INSTR_SIZE) <= physical_mem_end)
  return 0;
 if (IN_MEM(addr, BREAK_INSTR_SIZE, ASYNC_BANK0_BASE, ASYNC_BANK_SIZE))
  return 0;
 if (cpu == 0 && IN_MEM(addr, BREAK_INSTR_SIZE, L1_CODE_START, L1_CODE_LENGTH))
  return 0;




 if (IN_MEM(addr, BREAK_INSTR_SIZE, L2_START, L2_LENGTH))
  return 0;

 return -EFAULT;
}
