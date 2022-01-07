
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u32 ;


 size_t USER_MAP ;
 unsigned short** translations ;

u32 conv_8bit_to_uni(unsigned char c)
{
 unsigned short uni = translations[USER_MAP][c];
 return uni == (0xf000 | c) ? c : uni;
}
