
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUS2QUAD (unsigned int) ;
 unsigned int PCI_CONF1_MQ_ADDRESS (unsigned int,unsigned int,unsigned int) ;
 int XQUAD_PORT_ADDR (int,int ) ;
 int outl (unsigned int,int) ;
 int writel (unsigned int,int ) ;
 scalar_t__ xquad_portio ;

__attribute__((used)) static void write_cf8(unsigned bus, unsigned devfn, unsigned reg)
{
 unsigned val = PCI_CONF1_MQ_ADDRESS(bus, devfn, reg);
 if (xquad_portio)
  writel(val, XQUAD_PORT_ADDR(0xcf8, BUS2QUAD(bus)));
 else
  outl(val, 0xCF8);
}
