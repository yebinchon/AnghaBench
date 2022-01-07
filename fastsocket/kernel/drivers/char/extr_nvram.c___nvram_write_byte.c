
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CMOS_WRITE (unsigned char,scalar_t__) ;
 scalar_t__ NVRAM_FIRST_BYTE ;

void __nvram_write_byte(unsigned char c, int i)
{
 CMOS_WRITE(c, NVRAM_FIRST_BYTE + i);
}
