
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wl1271 {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* tx_immediate_compl ) (struct wl1271*) ;} ;


 int stub1 (struct wl1271*) ;

__attribute__((used)) static inline void wlcore_hw_tx_immediate_compl(struct wl1271 *wl)
{
 if (wl->ops->tx_immediate_compl)
  wl->ops->tx_immediate_compl(wl);
}
