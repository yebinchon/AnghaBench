
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int ARM_r9; } ;
typedef int dma_t ;


 int get_fiq_regs (struct pt_regs*) ;

__attribute__((used)) static int floppy_get_residue(unsigned int chan, dma_t *dma)
{
 struct pt_regs regs;
 get_fiq_regs(&regs);
 return regs.ARM_r9;
}
