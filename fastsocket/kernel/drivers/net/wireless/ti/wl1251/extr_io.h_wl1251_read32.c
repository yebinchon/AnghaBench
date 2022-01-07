
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wl1251 {int buffer_32; TYPE_1__* if_ops; } ;
struct TYPE_2__ {int (* read ) (struct wl1251*,int,int *,int) ;} ;


 int le32_to_cpu (int ) ;
 int stub1 (struct wl1251*,int,int *,int) ;

__attribute__((used)) static inline u32 wl1251_read32(struct wl1251 *wl, int addr)
{
 wl->if_ops->read(wl, addr, &wl->buffer_32, sizeof(wl->buffer_32));

 return le32_to_cpu(wl->buffer_32);
}
