
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int outw (int ,unsigned int) ;

__attribute__((used)) static inline void vlsi_clear_regs(unsigned iobase)
{
 unsigned i;
 const unsigned chip_io_extent = 32;

 for (i = 0; i < chip_io_extent; i += sizeof(u16))
  outw(0, iobase + i);
}
