
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pasemi_write_iob_reg (unsigned int,unsigned int) ;

__attribute__((used)) static void write_iob_reg(unsigned int reg, unsigned int val)
{
 pasemi_write_iob_reg(reg, val);
}
