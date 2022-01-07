
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore {int * header_area; int * zero_area; int * area; } ;


 int vfree (int *) ;

__attribute__((used)) static void free_area(struct pstore *ps)
{
 if (ps->area)
  vfree(ps->area);
 ps->area = ((void*)0);

 if (ps->zero_area)
  vfree(ps->zero_area);
 ps->zero_area = ((void*)0);

 if (ps->header_area)
  vfree(ps->header_area);
 ps->header_area = ((void*)0);
}
