
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SMSC_FDC37M81X_CONFIG_DATA ;
 scalar_t__ SMSC_FDC37M81X_CONFIG_INDEX ;
 scalar_t__ g_smsc_fdc37m81x_base ;
 int outb (unsigned char,scalar_t__) ;

__attribute__((used)) static inline void smsc_dc37m81x_wr(unsigned char index, unsigned char data)
{
 outb(index, g_smsc_fdc37m81x_base + SMSC_FDC37M81X_CONFIG_INDEX);
 outb(data, g_smsc_fdc37m81x_base + SMSC_FDC37M81X_CONFIG_DATA);
}
