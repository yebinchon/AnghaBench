
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int clamp_align(unsigned int x, unsigned int min,
    unsigned int max, unsigned int align)
{

 unsigned int mask = ~((1 << align) - 1);


 if (align)
  x = (x + (1 << (align - 1))) & mask;


 if (x < min)
  x = (min + ~mask) & mask;
 else if (x > max)
  x = max & mask;

 return x;
}
