
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl1251 {TYPE_1__* if_ops; } ;
struct TYPE_2__ {int (* power ) (struct wl1251*,int) ;} ;


 int stub1 (struct wl1251*,int) ;

__attribute__((used)) static int wl1251_power_off(struct wl1251 *wl)
{
 return wl->if_ops->power(wl, 0);
}
