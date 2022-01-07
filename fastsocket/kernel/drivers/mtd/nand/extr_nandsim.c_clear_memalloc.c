
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int PF_MEMALLOC ;
 TYPE_1__* current ;

__attribute__((used)) static void clear_memalloc(int memalloc)
{
 if (memalloc)
  current->flags &= ~PF_MEMALLOC;
}
