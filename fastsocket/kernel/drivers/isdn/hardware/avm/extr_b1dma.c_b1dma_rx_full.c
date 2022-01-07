
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inb (unsigned int) ;

__attribute__((used)) static inline int b1dma_rx_full(unsigned int port)
{
 return inb(port + 0x02) & 0x1;
}
