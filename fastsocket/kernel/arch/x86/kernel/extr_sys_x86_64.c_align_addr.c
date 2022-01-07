
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct file {int dummy; } ;
typedef enum align_flags { ____Placeholder_align_flags } align_flags ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int flags; unsigned long mask; } ;


 int ALIGN_TOPDOWN ;
 int ALIGN_VDSO ;
 int PF_RANDOMIZE ;
 TYPE_2__* current ;
 int mmap_is_ia32 () ;
 TYPE_1__ va_align ;

unsigned long align_addr(unsigned long addr, struct file *filp,
    enum align_flags flags)
{
 unsigned long tmp_addr;


 if (va_align.flags < 0 || !(va_align.flags & (2 - mmap_is_ia32())))
  return addr;

 if (!(current->flags & PF_RANDOMIZE))
  return addr;

 if (!((flags & ALIGN_VDSO) || filp))
  return addr;

 tmp_addr = addr;





 if (!(flags & ALIGN_TOPDOWN))
  tmp_addr += va_align.mask;

 tmp_addr &= ~va_align.mask;

 return tmp_addr;
}
