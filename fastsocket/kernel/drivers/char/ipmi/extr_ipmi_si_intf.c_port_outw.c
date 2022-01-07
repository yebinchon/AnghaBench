
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_io {unsigned int addr_data; unsigned char regshift; unsigned int regspacing; } ;


 int outw (unsigned char,unsigned int) ;

__attribute__((used)) static void port_outw(struct si_sm_io *io, unsigned int offset,
        unsigned char b)
{
 unsigned int addr = io->addr_data;

 outw(b << io->regshift, addr + (offset * io->regspacing));
}
