
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pasemi_write_dma_reg (unsigned int,unsigned int) ;

__attribute__((used)) static void write_dma_reg(unsigned int reg, unsigned int val)
{
 pasemi_write_dma_reg(reg, val);
}
