
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wl3501_md_confirm {int data; } ;
struct wl3501_card {int dummy; } ;
struct net_device {int dummy; } ;
typedef int sig ;


 int dprintk (int,char*) ;
 scalar_t__ netif_queue_stopped (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int wl3501_free_tx_buffer (struct wl3501_card*,int ) ;
 int wl3501_get_from_wla (struct wl3501_card*,int ,struct wl3501_md_confirm*,int) ;

__attribute__((used)) static inline void wl3501_md_confirm_interrupt(struct net_device *dev,
            struct wl3501_card *this,
            u16 addr)
{
 struct wl3501_md_confirm sig;

 dprintk(3, "entry");
 wl3501_get_from_wla(this, addr, &sig, sizeof(sig));
 wl3501_free_tx_buffer(this, sig.data);
 if (netif_queue_stopped(dev))
  netif_wake_queue(dev);
}
