
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IRCC_MASTER ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static inline void register_bank(int iobase, int bank)
{
        outb(((inb(iobase + IRCC_MASTER) & 0xf0) | (bank & 0x07)),
               iobase + IRCC_MASTER);
}
