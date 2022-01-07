
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NETWAVE_REG_ASR ;
 int inb (scalar_t__) ;

__attribute__((used)) static inline void wait_WOC(unsigned int iobase)
{

    while ((inb(iobase + NETWAVE_REG_ASR) & 0x8) != 0x8) ;
}
