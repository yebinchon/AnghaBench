
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int dcr; unsigned long* ibar; unsigned long* dbar; unsigned long** dbmr; int ** dbdr; } ;
struct TYPE_3__ {unsigned long addr; unsigned long len; int * originsns; } ;


 int BREAK_INSN ;
 unsigned long DCR_DRBE0 ;
 unsigned long DCR_DRBE1 ;
 unsigned long DCR_DWBE0 ;
 unsigned long DCR_DWBE1 ;
 int DCR_IBE0 ;
 int DCR_IBE1 ;
 int DCR_IBE2 ;
 int DCR_IBE3 ;
 int EFAULT ;
 int EINVAL ;
 int ENOSPC ;
 TYPE_2__* __debug_regs ;
 TYPE_1__* gdbstub_bkpts ;
 int gdbstub_printk (char*,int,unsigned long,unsigned long,int ,int ,int ,int ) ;
 int gdbstub_read_dword (int *,int *) ;
 int gdbstub_write_dword (int *,int ) ;
 int memset (int *,int,int) ;

__attribute__((used)) static int gdbstub_set_breakpoint(unsigned long type, unsigned long addr, unsigned long len)
{
 unsigned long tmp;
 int bkpt, loop, xloop;

 union {
  struct {
   unsigned long mask0, mask1;
  };
  uint8_t bytes[8];
 } dbmr;



 switch (type) {

 case 0:
  if (addr & 3 || len > 7*4)
   return -EINVAL;

  for (bkpt = 255; bkpt >= 0; bkpt--)
   if (!gdbstub_bkpts[bkpt].addr)
    break;
  if (bkpt < 0)
   return -ENOSPC;

  for (loop = 0; loop < len/4; loop++)
   if (!gdbstub_read_dword(&((uint32_t *) addr)[loop],
      &gdbstub_bkpts[bkpt].originsns[loop]))
    return -EFAULT;

  for (loop = 0; loop < len/4; loop++)
   if (!gdbstub_write_dword(&((uint32_t *) addr)[loop],
       BREAK_INSN)
       ) {

    for (xloop = 0; xloop < loop; xloop++)
     gdbstub_write_dword(&((uint32_t *) addr)[xloop],
           gdbstub_bkpts[bkpt].originsns[xloop]);
    return -EFAULT;
   }

  gdbstub_bkpts[bkpt].addr = addr;
  gdbstub_bkpts[bkpt].len = len;
  return 0;


 case 1:
  if (addr & 3 || len != 4)
   return -EINVAL;

  if (!(__debug_regs->dcr & DCR_IBE0)) {

   __debug_regs->dcr |= DCR_IBE0;
   __debug_regs->ibar[0] = addr;
   asm volatile("movgs %0,ibar0" : : "r"(addr));
   return 0;
  }

  if (!(__debug_regs->dcr & DCR_IBE1)) {

   __debug_regs->dcr |= DCR_IBE1;
   __debug_regs->ibar[1] = addr;
   asm volatile("movgs %0,ibar1" : : "r"(addr));
   return 0;
  }

  if (!(__debug_regs->dcr & DCR_IBE2)) {

   __debug_regs->dcr |= DCR_IBE2;
   __debug_regs->ibar[2] = addr;
   asm volatile("movgs %0,ibar2" : : "r"(addr));
   return 0;
  }

  if (!(__debug_regs->dcr & DCR_IBE3)) {

   __debug_regs->dcr |= DCR_IBE3;
   __debug_regs->ibar[3] = addr;
   asm volatile("movgs %0,ibar3" : : "r"(addr));
   return 0;
  }

  return -ENOSPC;


 case 2:
 case 3:
 case 4:
  if ((addr & ~7) != ((addr + len - 1) & ~7))
   return -EINVAL;

  tmp = addr & 7;

  memset(dbmr.bytes, 0xff, sizeof(dbmr.bytes));
  for (loop = 0; loop < len; loop++)
   dbmr.bytes[tmp + loop] = 0;

  addr &= ~7;

  if (!(__debug_regs->dcr & (DCR_DRBE0|DCR_DWBE0))) {

   tmp = type==2 ? DCR_DWBE0 : type==3 ? DCR_DRBE0 : DCR_DRBE0|DCR_DWBE0;

   __debug_regs->dcr |= tmp;
   __debug_regs->dbar[0] = addr;
   __debug_regs->dbmr[0][0] = dbmr.mask0;
   __debug_regs->dbmr[0][1] = dbmr.mask1;
   __debug_regs->dbdr[0][0] = 0;
   __debug_regs->dbdr[0][1] = 0;

   asm volatile("	movgs	%0,dbar0	\n"
         "	movgs	%1,dbmr00	\n"
         "	movgs	%2,dbmr01	\n"
         "	movgs	gr0,dbdr00	\n"
         "	movgs	gr0,dbdr01	\n"
         : : "r"(addr), "r"(dbmr.mask0), "r"(dbmr.mask1));
   return 0;
  }

  if (!(__debug_regs->dcr & (DCR_DRBE1|DCR_DWBE1))) {

   tmp = type==2 ? DCR_DWBE1 : type==3 ? DCR_DRBE1 : DCR_DRBE1|DCR_DWBE1;

   __debug_regs->dcr |= tmp;
   __debug_regs->dbar[1] = addr;
   __debug_regs->dbmr[1][0] = dbmr.mask0;
   __debug_regs->dbmr[1][1] = dbmr.mask1;
   __debug_regs->dbdr[1][0] = 0;
   __debug_regs->dbdr[1][1] = 0;

   asm volatile("	movgs	%0,dbar1	\n"
         "	movgs	%1,dbmr10	\n"
         "	movgs	%2,dbmr11	\n"
         "	movgs	gr0,dbdr10	\n"
         "	movgs	gr0,dbdr11	\n"
         : : "r"(addr), "r"(dbmr.mask0), "r"(dbmr.mask1));
   return 0;
  }

  return -ENOSPC;

 default:
  return -EINVAL;
 }

}
