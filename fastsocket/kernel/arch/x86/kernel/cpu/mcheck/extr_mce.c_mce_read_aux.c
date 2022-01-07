
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mce {int status; int addr; void* misc; } ;


 int MCI_MISC_ADDR_LSB (void*) ;
 int MCI_STATUS_ADDRV ;
 int MCI_STATUS_MISCV ;
 int MSR_IA32_MCx_ADDR (int) ;
 int MSR_IA32_MCx_MISC (int) ;
 void* mce_rdmsrl (int ) ;
 scalar_t__ mce_ser ;

__attribute__((used)) static void mce_read_aux(struct mce *m, int i)
{
 if (m->status & MCI_STATUS_MISCV)
  m->misc = mce_rdmsrl(MSR_IA32_MCx_MISC(i));
 if (m->status & MCI_STATUS_ADDRV) {
  m->addr = mce_rdmsrl(MSR_IA32_MCx_ADDR(i));




  if (mce_ser && (m->status & MCI_STATUS_MISCV)) {
   u8 shift = MCI_MISC_ADDR_LSB(m->misc);
   m->addr >>= shift;
   m->addr <<= shift;
  }
 }
}
