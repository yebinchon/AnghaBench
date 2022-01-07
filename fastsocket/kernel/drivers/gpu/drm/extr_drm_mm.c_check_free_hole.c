
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int check_free_hole(unsigned long start, unsigned long end,
      unsigned long size, unsigned alignment)
{
 if (end - start < size)
  return 0;

 if (alignment) {
  unsigned tmp = start % alignment;
  if (tmp)
   start += alignment - tmp;
 }

 return end >= start + size;
}
