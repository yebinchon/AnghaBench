
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask; } ;


 TYPE_1__* cheetah_error_table ;

__attribute__((used)) static inline unsigned long cheetah_get_hipri(unsigned long afsr)
{
 unsigned long tmp = 0;
 int i;

 for (i = 0; cheetah_error_table[i].mask; i++) {
  if ((tmp = (afsr & cheetah_error_table[i].mask)) != 0UL)
   return tmp;
 }
 return tmp;
}
