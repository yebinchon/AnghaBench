
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int dcr; int ** dbdr; int ** dbmr; int * dbar; int * ibar; } ;
struct TYPE_3__ {unsigned long addr; unsigned long len; int * originsns; } ;


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
 int ENOENT ;
 int ENOSPC ;
 TYPE_2__* __debug_regs ;
 unsigned long __get_dbar (int) ;
 unsigned long __get_dbmr0 (int) ;
 unsigned long __get_dbmr1 (int) ;
 unsigned long __get_ibar (int) ;
 TYPE_1__* gdbstub_bkpts ;
 int gdbstub_write_dword (int *,int ) ;
 int memset (int *,int,int) ;

int gdbstub_clear_breakpoint(unsigned long type, unsigned long addr, unsigned long len)
{
 unsigned long tmp;
 int bkpt, loop;

 union {
  struct {
   unsigned long mask0, mask1;
  };
  uint8_t bytes[8];
 } dbmr;



 switch (type) {

 case 0:
  for (bkpt = 255; bkpt >= 0; bkpt--)
   if (gdbstub_bkpts[bkpt].addr == addr && gdbstub_bkpts[bkpt].len == len)
    break;
  if (bkpt < 0)
   return -ENOENT;

  gdbstub_bkpts[bkpt].addr = 0;

  for (loop = 0; loop < len/4; loop++)
   if (!gdbstub_write_dword(&((uint32_t *) addr)[loop],
       gdbstub_bkpts[bkpt].originsns[loop]))
    return -EFAULT;
  return 0;


 case 1:
  if (addr & 3 || len != 4)
   return -EINVAL;



  if (__debug_regs->dcr & DCR_IBE0 && ({ unsigned long x; asm volatile("movsg ibar""0"",%0" : "=r"(x)); x; }) == addr) {

   __debug_regs->dcr &= ~DCR_IBE0;
   __debug_regs->ibar[0] = 0;
   asm volatile("movgs gr0,ibar0");
   return 0;
  }

  if (__debug_regs->dcr & DCR_IBE1 && ({ unsigned long x; asm volatile("movsg ibar""1"",%0" : "=r"(x)); x; }) == addr) {

   __debug_regs->dcr &= ~DCR_IBE1;
   __debug_regs->ibar[1] = 0;
   asm volatile("movgs gr0,ibar1");
   return 0;
  }

  if (__debug_regs->dcr & DCR_IBE2 && ({ unsigned long x; asm volatile("movsg ibar""2"",%0" : "=r"(x)); x; }) == addr) {

   __debug_regs->dcr &= ~DCR_IBE2;
   __debug_regs->ibar[2] = 0;
   asm volatile("movgs gr0,ibar2");
   return 0;
  }

  if (__debug_regs->dcr & DCR_IBE3 && ({ unsigned long x; asm volatile("movsg ibar""3"",%0" : "=r"(x)); x; }) == addr) {

   __debug_regs->dcr &= ~DCR_IBE3;
   __debug_regs->ibar[3] = 0;
   asm volatile("movgs gr0,ibar3");
   return 0;
  }

  return -EINVAL;


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






  tmp = type==2 ? DCR_DWBE0 : type==3 ? DCR_DRBE0 : DCR_DRBE0|DCR_DWBE0;

  if ((__debug_regs->dcr & (DCR_DRBE0|DCR_DWBE0)) != tmp ||
      ({ unsigned long x; asm volatile("movsg dbar""0"",%0" : "=r"(x)); x; }) != addr ||
      ({ unsigned long x; asm volatile("movsg dbmr""0""0,%0" : "=r"(x)); x; }) != dbmr.mask0 ||
      ({ unsigned long x; asm volatile("movsg dbmr""0""1,%0" : "=r"(x)); x; }) != dbmr.mask1)
   goto skip_dbar0;


  __debug_regs->dcr &= ~(DCR_DRBE0|DCR_DWBE0);
  __debug_regs->dbar[0] = 0;
  __debug_regs->dbmr[0][0] = 0;
  __debug_regs->dbmr[0][1] = 0;
  __debug_regs->dbdr[0][0] = 0;
  __debug_regs->dbdr[0][1] = 0;

  asm volatile("	movgs	gr0,dbar0	\n"
        "	movgs	gr0,dbmr00	\n"
        "	movgs	gr0,dbmr01	\n"
        "	movgs	gr0,dbdr00	\n"
        "	movgs	gr0,dbdr01	\n");
  return 0;

 skip_dbar0:

  tmp = type==2 ? DCR_DWBE1 : type==3 ? DCR_DRBE1 : DCR_DRBE1|DCR_DWBE1;

  if ((__debug_regs->dcr & (DCR_DRBE1|DCR_DWBE1)) != tmp ||
      ({ unsigned long x; asm volatile("movsg dbar""1"",%0" : "=r"(x)); x; }) != addr ||
      ({ unsigned long x; asm volatile("movsg dbmr""1""0,%0" : "=r"(x)); x; }) != dbmr.mask0 ||
      ({ unsigned long x; asm volatile("movsg dbmr""1""1,%0" : "=r"(x)); x; }) != dbmr.mask1)
   goto skip_dbar1;


  __debug_regs->dcr &= ~(DCR_DRBE1|DCR_DWBE1);
  __debug_regs->dbar[1] = 0;
  __debug_regs->dbmr[1][0] = 0;
  __debug_regs->dbmr[1][1] = 0;
  __debug_regs->dbdr[1][0] = 0;
  __debug_regs->dbdr[1][1] = 0;

  asm volatile("	movgs	gr0,dbar1	\n"
        "	movgs	gr0,dbmr10	\n"
        "	movgs	gr0,dbmr11	\n"
        "	movgs	gr0,dbdr10	\n"
        "	movgs	gr0,dbdr11	\n");
  return 0;

 skip_dbar1:
  return -ENOSPC;

 default:
  return -EINVAL;
 }
}
