
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {struct spi_device* if_priv; } ;
struct spi_device {int dummy; } ;



__attribute__((used)) static struct spi_device *wl_to_spi(struct wl1251 *wl)
{
 return wl->if_priv;
}
