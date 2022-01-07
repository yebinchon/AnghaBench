
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline int is_word_sized(u16 reg)
{
 return (((reg & 0xff00) == 0x100
       || (reg & 0xff00) == 0x200)
      && ((reg & 0x00ff) == 0x50
       || (reg & 0x00ff) == 0x53
       || (reg & 0x00ff) == 0x55));
}
