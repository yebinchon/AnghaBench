
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fixp_t ;


 int * cos_table ;

__attribute__((used)) static inline fixp_t fixp_cos(unsigned int degrees)
{
 int quadrant = (degrees / 90) & 3;
 unsigned int i = degrees % 90;

 if (quadrant == 1 || quadrant == 3)
  i = 90 - i;

 i >>= 1;

 return (quadrant == 1 || quadrant == 2)? -cos_table[i] : cos_table[i];
}
