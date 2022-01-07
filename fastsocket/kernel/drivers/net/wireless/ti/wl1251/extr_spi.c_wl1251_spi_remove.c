
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int irq; } ;
struct spi_device {int dummy; } ;


 int free_irq (int ,struct wl1251*) ;
 struct wl1251* spi_get_drvdata (struct spi_device*) ;
 int wl1251_free_hw (struct wl1251*) ;

__attribute__((used)) static int wl1251_spi_remove(struct spi_device *spi)
{
 struct wl1251 *wl = spi_get_drvdata(spi);

 free_irq(wl->irq, wl);
 wl1251_free_hw(wl);

 return 0;
}
