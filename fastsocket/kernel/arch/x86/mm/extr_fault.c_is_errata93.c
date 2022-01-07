
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct pt_regs {unsigned long ip; } ;


 unsigned long MODULES_END ;
 unsigned long MODULES_VADDR ;
 scalar_t__ _etext ;
 scalar_t__ _stext ;
 int errata93_warning ;
 int printk_once (int ) ;

__attribute__((used)) static int is_errata93(struct pt_regs *regs, unsigned long address)
{
 return 0;
}
