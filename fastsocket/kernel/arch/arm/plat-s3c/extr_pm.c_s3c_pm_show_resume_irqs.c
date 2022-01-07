
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S3C_PMDBG (char*,int) ;

__attribute__((used)) static void s3c_pm_show_resume_irqs(int start, unsigned long which,
        unsigned long mask)
{
 int i;

 which &= ~mask;

 for (i = 0; i <= 31; i++) {
  if (which & (1L<<i)) {
   S3C_PMDBG("IRQ %d asserted at resume\n", start+i);
  }
 }
}
