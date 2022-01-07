
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_device {struct omap2_mcspi_cs* controller_state; } ;
struct omap2_mcspi_cs {int chconf0; } ;



__attribute__((used)) static inline u32 mcspi_cached_chconf0(const struct spi_device *spi)
{
 struct omap2_mcspi_cs *cs = spi->controller_state;

 return cs->chconf0;
}
