
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SMSC_FDC37M81X_CONFIG_DATA ;
 scalar_t__ SMSC_FDC37M81X_CONFIG_INDEX ;
 scalar_t__ g_smsc_fdc37m81x_base ;
 unsigned char inb (scalar_t__) ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static inline unsigned char smsc_fdc37m81x_rd(unsigned char index)
{
 outb(index, g_smsc_fdc37m81x_base + SMSC_FDC37M81X_CONFIG_INDEX);

 return inb(g_smsc_fdc37m81x_base + SMSC_FDC37M81X_CONFIG_DATA);
}
