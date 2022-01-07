
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mtrr_type ;


 unsigned int CX86_ARR_BASE ;
 unsigned int CX86_CCR3 ;
 unsigned int CX86_RCR_BASE ;
 int MTRR_TYPE_UNCACHABLE ;
 int MTRR_TYPE_WRBACK ;
 int MTRR_TYPE_WRCOMB ;
 int MTRR_TYPE_WRTHROUGH ;
 unsigned long PAGE_SHIFT ;
 unsigned char getCx86 (unsigned int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int setCx86 (unsigned int,unsigned char) ;

__attribute__((used)) static void
cyrix_get_arr(unsigned int reg, unsigned long *base,
       unsigned long *size, mtrr_type * type)
{
 unsigned char arr, ccr3, rcr, shift;
 unsigned long flags;

 arr = CX86_ARR_BASE + (reg << 1) + reg;

 local_irq_save(flags);

 ccr3 = getCx86(CX86_CCR3);
 setCx86(CX86_CCR3, (ccr3 & 0x0f) | 0x10);
 ((unsigned char *)base)[3] = getCx86(arr);
 ((unsigned char *)base)[2] = getCx86(arr + 1);
 ((unsigned char *)base)[1] = getCx86(arr + 2);
 rcr = getCx86(CX86_RCR_BASE + reg);
 setCx86(CX86_CCR3, ccr3);

 local_irq_restore(flags);

 shift = ((unsigned char *) base)[1] & 0x0f;
 *base >>= PAGE_SHIFT;





 if (shift)
  *size = (reg < 7 ? 0x1UL : 0x40UL) << (shift - 1);
 else
  *size = 0;


 if (reg < 7) {
  switch (rcr) {
  case 1:
   *type = MTRR_TYPE_UNCACHABLE;
   break;
  case 8:
   *type = MTRR_TYPE_WRBACK;
   break;
  case 9:
   *type = MTRR_TYPE_WRCOMB;
   break;
  case 24:
  default:
   *type = MTRR_TYPE_WRTHROUGH;
   break;
  }
 } else {
  switch (rcr) {
  case 0:
   *type = MTRR_TYPE_UNCACHABLE;
   break;
  case 8:
   *type = MTRR_TYPE_WRCOMB;
   break;
  case 9:
   *type = MTRR_TYPE_WRBACK;
   break;
  case 25:
  default:
   *type = MTRR_TYPE_WRTHROUGH;
   break;
  }
 }
}
