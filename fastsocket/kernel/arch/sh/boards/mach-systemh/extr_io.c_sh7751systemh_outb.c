
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ETHER_IOMAP (unsigned long) ;
 scalar_t__ PXSEG (unsigned long) ;
 unsigned char* port2adr (unsigned long) ;

void sh7751systemh_outb(unsigned char value, unsigned long port)
{

        if (PXSEG(port))
                *(volatile unsigned char *)port = value;
 else if (port <= 0x3F1)
  *(volatile unsigned char *)ETHER_IOMAP(port) = value;
 else
  *(port2adr(port)) = value;
}
