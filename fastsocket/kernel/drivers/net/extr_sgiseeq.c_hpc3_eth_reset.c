
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpc3_ethregs {int reset; } ;


 int HPC3_ERST_CLRIRQ ;
 int HPC3_ERST_CRESET ;
 int udelay (int) ;

__attribute__((used)) static inline void hpc3_eth_reset(struct hpc3_ethregs *hregs)
{
 hregs->reset = HPC3_ERST_CRESET | HPC3_ERST_CLRIRQ;
 udelay(20);
 hregs->reset = 0;
}
