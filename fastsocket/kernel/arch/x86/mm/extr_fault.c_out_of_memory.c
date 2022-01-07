
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {int mmap_sem; } ;


 TYPE_2__* current ;
 int pagefault_out_of_memory () ;
 int up_read (int *) ;

__attribute__((used)) static void
out_of_memory(struct pt_regs *regs, unsigned long error_code,
       unsigned long address)
{




 up_read(&current->mm->mmap_sem);

 pagefault_out_of_memory();
}
