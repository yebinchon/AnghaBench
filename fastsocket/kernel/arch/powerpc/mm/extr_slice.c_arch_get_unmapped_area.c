
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
 unsigned long slice_get_unmapped_area (unsigned long,unsigned long,unsigned long,int ,int ,int) ;

unsigned long arch_get_unmapped_area(struct file *filp,
         unsigned long addr,
         unsigned long len,
         unsigned long pgoff,
         unsigned long flags)
{
 return slice_get_unmapped_area(addr, len, flags,
           current->mm->context.user_psize,
           0, 1);
}
