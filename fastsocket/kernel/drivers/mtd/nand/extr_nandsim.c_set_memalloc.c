
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int PF_MEMALLOC ;
 TYPE_1__* current ;

__attribute__((used)) static int set_memalloc(void)
{
 if (current->flags & PF_MEMALLOC)
  return 0;
 current->flags |= PF_MEMALLOC;
 return 1;
}
