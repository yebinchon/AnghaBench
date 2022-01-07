
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lguest {TYPE_1__* pgdirs; } ;
struct TYPE_2__ {scalar_t__ pgdir; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 int free_page (long) ;
 int release_all_pagetables (struct lguest*) ;

void free_guest_pagetable(struct lguest *lg)
{
 unsigned int i;


 release_all_pagetables(lg);

 for (i = 0; i < ARRAY_SIZE(lg->pgdirs); i++)
  free_page((long)lg->pgdirs[i].pgdir);
}
