
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmbe {int dummy; } ;



__attribute__((used)) static inline struct cmbe *cmbe_align(struct cmbe *c)
{
 unsigned long addr;
 addr = ((unsigned long)c + sizeof (struct cmbe) - sizeof(long)) &
     ~(sizeof (struct cmbe) - sizeof(long));
 return (struct cmbe*)addr;
}
