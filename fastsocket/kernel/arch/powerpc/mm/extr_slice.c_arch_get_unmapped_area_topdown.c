
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct file {int dummy; } ;
struct TYPE_6__ {TYPE_2__* mm; } ;
struct TYPE_4__ {int user_psize; } ;
struct TYPE_5__ {TYPE_1__ context; } ;


 TYPE_3__* current ;
 unsigned long slice_get_unmapped_area (unsigned long const,unsigned long const,unsigned long const,int ,int,int) ;

unsigned long arch_get_unmapped_area_topdown(struct file *filp,
          const unsigned long addr0,
          const unsigned long len,
          const unsigned long pgoff,
          const unsigned long flags)
{
 return slice_get_unmapped_area(addr0, len, flags,
           current->mm->context.user_psize,
           1, 1);
}
