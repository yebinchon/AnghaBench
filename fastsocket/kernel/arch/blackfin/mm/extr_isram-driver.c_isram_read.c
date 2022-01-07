
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 int IADDR2DTEST (void const*) ;
 scalar_t__ L1_CODE_LENGTH ;
 scalar_t__ L1_CODE_START ;
 int __builtin_bfin_csync () ;
 int bfin_read_DTEST_DATA0 () ;
 scalar_t__ bfin_read_DTEST_DATA1 () ;
 int bfin_write_DTEST_COMMAND (int) ;
 int dtest_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static uint64_t isram_read(const void *addr)
{
 uint32_t cmd;
 unsigned long flags;
 uint64_t ret;

 if (addr > (void *)(L1_CODE_START + L1_CODE_LENGTH))
  return 0;

 cmd = IADDR2DTEST(addr) | 0;





 spin_lock_irqsave(&dtest_lock, flags);

 __builtin_bfin_csync();
 bfin_write_DTEST_COMMAND(cmd);
 __builtin_bfin_csync();
 ret = bfin_read_DTEST_DATA0() | ((uint64_t)bfin_read_DTEST_DATA1() << 32);

 bfin_write_DTEST_COMMAND(0);
 __builtin_bfin_csync();
 spin_unlock_irqrestore(&dtest_lock, flags);

 return ret;
}
