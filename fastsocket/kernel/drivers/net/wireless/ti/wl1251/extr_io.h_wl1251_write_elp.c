
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wl1251 {TYPE_1__* if_ops; } ;
struct TYPE_2__ {int (* write ) (struct wl1251*,int,int *,int) ;int (* write_elp ) (struct wl1251*,int,int ) ;} ;


 int stub1 (struct wl1251*,int,int ) ;
 int stub2 (struct wl1251*,int,int *,int) ;

__attribute__((used)) static inline void wl1251_write_elp(struct wl1251 *wl, int addr, u32 val)
{
 if (wl->if_ops->write_elp)
  wl->if_ops->write_elp(wl, addr, val);
 else
  wl->if_ops->write(wl, addr, &val, sizeof(u32));
}
