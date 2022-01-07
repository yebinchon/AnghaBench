
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int dec_kn02xa_be_backend (struct pt_regs*,int,int ) ;

int dec_kn02xa_be_handler(struct pt_regs *regs, int is_fixup)
{
 return dec_kn02xa_be_backend(regs, is_fixup, 0);
}
