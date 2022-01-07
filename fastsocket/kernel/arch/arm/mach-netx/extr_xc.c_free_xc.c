
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xc {int no; int sram_base; } ;


 int NETX_PA_XMAC (int) ;
 int NETX_PA_XPEC (int) ;
 int SRAM_INTERNAL_PHYS (int) ;
 int SRAM_MEM_SIZE ;
 int XMAC_MEM_SIZE ;
 int XPEC_MEM_SIZE ;
 int iounmap (int ) ;
 int kfree (struct xc*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_mem_region (int ,int ) ;
 int xc_in_use ;
 int xc_lock ;

void free_xc(struct xc *x)
{
 int xcno = x->no;

 mutex_lock(&xc_lock);

 iounmap(x->sram_base);
 release_mem_region(SRAM_INTERNAL_PHYS(xcno), SRAM_MEM_SIZE);
 release_mem_region(NETX_PA_XMAC(xcno), XMAC_MEM_SIZE);
 release_mem_region(NETX_PA_XPEC(xcno), XPEC_MEM_SIZE);
 xc_in_use &= ~(1 << x->no);
 kfree(x);

 mutex_unlock(&xc_lock);
}
