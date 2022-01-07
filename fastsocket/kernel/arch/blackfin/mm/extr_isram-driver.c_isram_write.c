
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
 int bfin_write_DTEST_COMMAND (int) ;
 int bfin_write_DTEST_DATA0 (int) ;
 int bfin_write_DTEST_DATA1 (int) ;
 int dtest_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void isram_write(const void *addr, uint64_t data)
{
 uint32_t cmd;
 unsigned long flags;

 if (addr >= (void *)(L1_CODE_START + L1_CODE_LENGTH))
  return;

 cmd = IADDR2DTEST(addr) | 2;





 spin_lock_irqsave(&dtest_lock, flags);

 bfin_write_DTEST_DATA0(data & 0xFFFFFFFF);
 bfin_write_DTEST_DATA1(data >> 32);


 __builtin_bfin_csync();
 bfin_write_DTEST_COMMAND(cmd);
 __builtin_bfin_csync();

 bfin_write_DTEST_COMMAND(0);
 __builtin_bfin_csync();

 spin_unlock_irqrestore(&dtest_lock, flags);
}
