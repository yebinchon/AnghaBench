
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TUL_NVRAM ;
 int initio_se2_instr (unsigned long,int) ;
 int outb (int ,scalar_t__) ;
 int udelay (int) ;

void initio_se2_ew_en(unsigned long base)
{
 initio_se2_instr(base, 0x30);
 outb(0, base + TUL_NVRAM);
 udelay(30);
}
