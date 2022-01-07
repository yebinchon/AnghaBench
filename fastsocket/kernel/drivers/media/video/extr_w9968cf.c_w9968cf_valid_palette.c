
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {scalar_t__ palette; } ;


 TYPE_1__* w9968cf_formatlist ;

__attribute__((used)) static inline u16 w9968cf_valid_palette(u16 palette)
{
 u8 i = 0;
 while (w9968cf_formatlist[i].palette != 0) {
  if (palette == w9968cf_formatlist[i].palette)
   return palette;
  i++;
 }
 return 0;
}
