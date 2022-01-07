
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CP0_CERRI_DATA_PARITY ;
 unsigned int CP0_CERRI_EXTERNAL ;
 unsigned int CP0_CERRI_TAG_PARITY ;
 int printk (char*) ;

__attribute__((used)) static inline void breakout_cerri(unsigned int val)
{
 if (val & CP0_CERRI_TAG_PARITY)
  printk(" tag-parity");
 if (val & CP0_CERRI_DATA_PARITY)
  printk(" data-parity");
 if (val & CP0_CERRI_EXTERNAL)
  printk(" external");
 printk("\n");
}
