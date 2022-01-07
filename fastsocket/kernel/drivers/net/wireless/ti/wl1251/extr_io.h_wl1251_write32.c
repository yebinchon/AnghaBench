
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wl1251 {int buffer_32; TYPE_1__* if_ops; } ;
struct TYPE_2__ {int (* write ) (struct wl1251*,int,int *,int) ;} ;


 int cpu_to_le32 (int ) ;
 int stub1 (struct wl1251*,int,int *,int) ;

__attribute__((used)) static inline void wl1251_write32(struct wl1251 *wl, int addr, u32 val)
{
 wl->buffer_32 = cpu_to_le32(val);
 wl->if_ops->write(wl, addr, &wl->buffer_32, sizeof(wl->buffer_32));
}
