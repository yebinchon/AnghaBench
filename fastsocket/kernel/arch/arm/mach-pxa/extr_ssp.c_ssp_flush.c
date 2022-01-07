
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssp_device {scalar_t__ mmio_base; } ;
struct ssp_dev {struct ssp_device* ssp; } ;


 int ETIMEDOUT ;
 scalar_t__ SSDR ;
 scalar_t__ SSSR ;
 int SSSR_BSY ;
 int SSSR_RNE ;
 int TIMEOUT ;
 int __raw_readl (scalar_t__) ;
 scalar_t__ cpu_is_pxa3xx () ;
 int cpu_relax () ;

int ssp_flush(struct ssp_dev *dev)
{
 struct ssp_device *ssp = dev->ssp;
 int timeout = TIMEOUT * 2;


 if (cpu_is_pxa3xx()) {
  while (__raw_readl(ssp->mmio_base + SSSR) & 0xf00) {
   if (!--timeout)
    return -ETIMEDOUT;
   cpu_relax();
  }
  timeout = TIMEOUT * 2;
 }

 do {
  while (__raw_readl(ssp->mmio_base + SSSR) & SSSR_RNE) {
          if (!--timeout)
           return -ETIMEDOUT;
   (void)__raw_readl(ssp->mmio_base + SSDR);
  }
         if (!--timeout)
          return -ETIMEDOUT;
 } while (__raw_readl(ssp->mmio_base + SSSR) & SSSR_BSY);

 return 0;
}
