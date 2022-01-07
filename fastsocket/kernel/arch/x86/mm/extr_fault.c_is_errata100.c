
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int cs; } ;


 int __USER32_CS ;

__attribute__((used)) static int is_errata100(struct pt_regs *regs, unsigned long address)
{




 return 0;
}
