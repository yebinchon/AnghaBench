
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (unsigned int,unsigned long) ;

__attribute__((used)) static inline void labpc_outb(unsigned int byte, unsigned long address)
{
 outb(byte, address);
}
