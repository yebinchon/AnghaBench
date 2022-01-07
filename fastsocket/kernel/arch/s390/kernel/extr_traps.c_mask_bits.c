
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long mask; } ;
struct pt_regs {TYPE_1__ psw; } ;



__attribute__((used)) static inline int mask_bits(struct pt_regs *regs, unsigned long bits)
{
 return (regs->psw.mask & bits) / ((~bits + 1) & bits);
}
