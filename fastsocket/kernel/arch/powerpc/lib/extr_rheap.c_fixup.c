
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int prev; int next; } ;



__attribute__((used)) static inline void fixup(unsigned long s, unsigned long e, int d,
    struct list_head *l)
{
 unsigned long *pp;

 pp = (unsigned long *)&l->next;
 if (*pp >= s && *pp < e)
  *pp += d;

 pp = (unsigned long *)&l->prev;
 if (*pp >= s && *pp < e)
  *pp += d;
}
