
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si_sm_io {unsigned int regspacing; scalar_t__ addr; } ;


 int writeb (unsigned char,scalar_t__) ;

__attribute__((used)) static void intf_mem_outb(struct si_sm_io *io, unsigned int offset,
       unsigned char b)
{
 writeb(b, (io->addr)+(offset * io->regspacing));
}
