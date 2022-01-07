
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_iop {int dummy; } ;


 int IOP_ADDR_ALIVE ;
 int iop_readb (struct mac_iop volatile*,int ) ;
 int iop_writeb (struct mac_iop volatile*,int ,int ) ;

__attribute__((used)) static int iop_alive(volatile struct mac_iop *iop)
{
 int retval;

 retval = (iop_readb(iop, IOP_ADDR_ALIVE) == 0xFF);
 iop_writeb(iop, IOP_ADDR_ALIVE, 0);
 return retval;
}
