
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;



__attribute__((used)) static inline int notify_page_fault(struct pt_regs *regs, int trap)
{
 return 0;
}
