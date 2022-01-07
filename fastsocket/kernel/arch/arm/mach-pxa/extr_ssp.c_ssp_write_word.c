
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ssp_device {scalar_t__ mmio_base; } ;
struct ssp_dev {struct ssp_device* ssp; } ;


 int ETIMEDOUT ;
 scalar_t__ SSDR ;
 scalar_t__ SSSR ;
 int SSSR_TNF ;
 int TIMEOUT ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int ,scalar_t__) ;
 int cpu_relax () ;

int ssp_write_word(struct ssp_dev *dev, u32 data)
{
 struct ssp_device *ssp = dev->ssp;
 int timeout = TIMEOUT;

 while (!(__raw_readl(ssp->mmio_base + SSSR) & SSSR_TNF)) {
         if (!--timeout)
          return -ETIMEDOUT;
  cpu_relax();
 }

 __raw_writel(data, ssp->mmio_base + SSDR);

 return 0;
}
