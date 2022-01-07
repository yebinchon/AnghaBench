
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wbsd_host {int lock; scalar_t__ base; } ;
struct mmc_host {int dummy; } ;


 scalar_t__ WBSD_CSR ;
 int WBSD_MSLED ;
 int WBSD_WRPT ;
 int inb (scalar_t__) ;
 int mdelay (int) ;
 struct wbsd_host* mmc_priv (struct mmc_host*) ;
 int outb (int,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int wbsd_get_ro(struct mmc_host *mmc)
{
 struct wbsd_host *host = mmc_priv(mmc);
 u8 csr;

 spin_lock_bh(&host->lock);

 csr = inb(host->base + WBSD_CSR);
 csr |= WBSD_MSLED;
 outb(csr, host->base + WBSD_CSR);

 mdelay(1);

 csr = inb(host->base + WBSD_CSR);
 csr &= ~WBSD_MSLED;
 outb(csr, host->base + WBSD_CSR);

 spin_unlock_bh(&host->lock);

 return !!(csr & WBSD_WRPT);
}
