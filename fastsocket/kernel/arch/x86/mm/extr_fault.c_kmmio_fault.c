
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int is_kmmio_active () ;
 int kmmio_handler (struct pt_regs*,unsigned long) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline int kmmio_fault(struct pt_regs *regs, unsigned long addr)
{
 if (unlikely(is_kmmio_active()))
  if (kmmio_handler(regs, addr) == 1)
   return -1;
 return 0;
}
