
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int bfin_write_emudat (char) ;

__attribute__((used)) static inline uint32_t bfin_write_emudat_chars(char a, char b, char c, char d)
{
 return bfin_write_emudat((a << 0) | (b << 8) | (c << 16) | (d << 24));
}
