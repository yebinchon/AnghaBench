
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_lm70llp {int dummy; } ;
struct spi_device {int dummy; } ;


 int clkHigh (struct spi_lm70llp*) ;
 int clkLow (struct spi_lm70llp*) ;
 struct spi_lm70llp* spidev_to_pp (struct spi_device*) ;

__attribute__((used)) static inline void setsck(struct spi_device *s, int is_on)
{
 struct spi_lm70llp *pp = spidev_to_pp(s);

 if (is_on)
  clkHigh(pp);
 else
  clkLow(pp);
}
