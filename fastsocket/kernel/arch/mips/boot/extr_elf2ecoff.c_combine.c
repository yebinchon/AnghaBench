
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sect {scalar_t__ len; scalar_t__ vaddr; } ;


 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void combine(struct sect *base, struct sect *new, int pad)
{
 if (!base->len)
  *base = *new;
 else if (new->len) {
  if (base->vaddr + base->len != new->vaddr) {
   if (pad)
    base->len = new->vaddr - base->vaddr;
   else {
    fprintf(stderr,
     "Non-contiguous data can't be converted.\n");
    exit(1);
   }
  }
  base->len += new->len;
 }
}
