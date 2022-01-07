
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SMSC_FDC37M81X_CONFIG_EXIT ;
 scalar_t__ SMSC_FDC37M81X_CONFIG_INDEX ;
 scalar_t__ g_smsc_fdc37m81x_base ;
 int outb (int ,scalar_t__) ;

void smsc_fdc37m81x_config_end(void)
{
 if (g_smsc_fdc37m81x_base)
  outb(SMSC_FDC37M81X_CONFIG_EXIT,
       g_smsc_fdc37m81x_base + SMSC_FDC37M81X_CONFIG_INDEX);
}
