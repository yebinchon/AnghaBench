
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xc {int dev; int no; } ;


 unsigned long NETX_PA_XMAC (int ) ;
 unsigned long NETX_PA_XPEC (int ) ;
 unsigned long XMAC_MEM_SIZE ;
 unsigned long XPEC_MEM_SIZE ;
 int dev_err (int ,char*) ;

__attribute__((used)) static int xc_check_ptr(struct xc *x, unsigned long adr, unsigned int size)
{
 if (adr >= NETX_PA_XMAC(x->no) &&
     adr + size < NETX_PA_XMAC(x->no) + XMAC_MEM_SIZE)
  return 0;

 if (adr >= NETX_PA_XPEC(x->no) &&
     adr + size < NETX_PA_XPEC(x->no) + XPEC_MEM_SIZE)
  return 0;

 dev_err(x->dev, "Illegal pointer in firmware found. aborting\n");

 return -1;
}
