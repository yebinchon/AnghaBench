
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int ARRAY_SIZE (char const**) ;
 int printk (char*,...) ;

__attribute__((used)) static inline void mmc_omap_report_irq(u16 status)
{
 static const char *mmc_omap_status_bits[] = {
  "EOC", "CD", "CB", "BRS", "EOFB", "DTO", "DCRC", "CTO",
  "CCRC", "CRW", "AF", "AE", "OCRB", "CIRQ", "CERR"
 };
 int i, c = 0;

 for (i = 0; i < ARRAY_SIZE(mmc_omap_status_bits); i++)
  if (status & (1 << i)) {
   if (c)
    printk(" ");
   printk("%s", mmc_omap_status_bits[i]);
   c++;
  }
}
