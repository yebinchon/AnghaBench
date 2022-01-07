
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct revectored_struct {int dummy; } ;



__attribute__((used)) static inline int is_revectored(int nr, struct revectored_struct *bitmap)
{
 __asm__ __volatile__("btl %2,%1\n\tsbbl %0,%0"
  :"=r" (nr)
  :"m" (*bitmap), "r" (nr));
 return nr;
}
