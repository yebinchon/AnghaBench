
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int softe; } ;



__attribute__((used)) static inline int perf_intr_is_nmi(struct pt_regs *regs)
{



 return 0;

}
