
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl1251_rx_descriptor {int dummy; } ;
struct wl1251 {scalar_t__ state; struct wl1251_rx_descriptor* rx_descriptor; } ;


 scalar_t__ WL1251_STATE_ON ;
 int wl1251_rx_ack (struct wl1251*) ;
 int wl1251_rx_body (struct wl1251*,struct wl1251_rx_descriptor*) ;
 int wl1251_rx_header (struct wl1251*,struct wl1251_rx_descriptor*) ;

void wl1251_rx(struct wl1251 *wl)
{
 struct wl1251_rx_descriptor *rx_desc;

 if (wl->state != WL1251_STATE_ON)
  return;

 rx_desc = wl->rx_descriptor;


 wl1251_rx_header(wl, rx_desc);


 wl1251_rx_body(wl, rx_desc);


 wl1251_rx_ack(wl);
}
