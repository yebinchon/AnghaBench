
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BONITO_INTEN ;
 int BONITO_INTISR ;
 scalar_t__ BONITO_IRQ_BASE ;
 int __ffs (int) ;
 int do_IRQ (scalar_t__) ;
 int udelay (int) ;

void bonito_irqdispatch(void)
{
 u32 int_status;
 int i;


 int_status = BONITO_INTISR;
 if (int_status & (1 << 10)) {
  while (int_status & (1 << 10)) {
   udelay(1);
   int_status = BONITO_INTISR;
  }
 }


 int_status = BONITO_INTISR & BONITO_INTEN;

 if (int_status != 0) {
  i = __ffs(int_status);
  int_status &= ~(1 << i);
  do_IRQ(BONITO_IRQ_BASE + i);
 }
}
