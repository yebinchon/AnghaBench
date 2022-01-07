
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251 {int (* set_power ) (int) ;} ;


 int stub1 (int) ;

__attribute__((used)) static int wl1251_spi_set_power(struct wl1251 *wl, bool enable)
{
 if (wl->set_power)
  wl->set_power(enable);

 return 0;
}
