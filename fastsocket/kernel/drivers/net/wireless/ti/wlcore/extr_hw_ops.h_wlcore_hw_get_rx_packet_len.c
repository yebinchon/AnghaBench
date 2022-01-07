
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wl1271 {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_rx_packet_len ) (struct wl1271*,void*,int ) ;} ;


 int BUG_ON (int) ;
 int stub1 (struct wl1271*,void*,int ) ;

__attribute__((used)) static inline u32
wlcore_hw_get_rx_packet_len(struct wl1271 *wl, void *rx_data, u32 data_len)
{
 if (!wl->ops->get_rx_packet_len)
  BUG_ON(1);

 return wl->ops->get_rx_packet_len(wl, rx_data, data_len);
}
