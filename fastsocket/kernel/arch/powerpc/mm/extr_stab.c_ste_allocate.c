
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mm; } ;


 int __ste_allocate (unsigned long,int ) ;
 TYPE_1__* current ;

int ste_allocate(unsigned long ea)
{
 return __ste_allocate(ea, current->mm);
}
