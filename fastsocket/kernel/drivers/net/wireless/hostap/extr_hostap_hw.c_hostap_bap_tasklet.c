
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct TYPE_9__ {int bits; TYPE_1__* func; struct net_device* dev; } ;
typedef TYPE_2__ local_info_t ;
struct TYPE_8__ {int (* card_present ) (TYPE_2__*) ;} ;


 int HFA384X_BAP0_EVENTS ;
 int HFA384X_EVSTAT_OFF ;
 int HFA384X_EV_INFO ;
 int HFA384X_EV_RX ;
 int HFA384X_EV_TX ;
 int HFA384X_EV_TXEXC ;
 int HFA384X_INW (int ) ;
 int HOSTAP_BITS_BAP_TASKLET ;
 int HOSTAP_BITS_BAP_TASKLET2 ;
 int clear_bit (int ,int *) ;
 int hfa384x_events_all (struct net_device*) ;
 int prism2_info (TYPE_2__*) ;
 int prism2_rx (TYPE_2__*) ;
 int prism2_tx_ev (TYPE_2__*) ;
 int prism2_txexc (TYPE_2__*) ;
 int set_bit (int ,int *) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void hostap_bap_tasklet(unsigned long data)
{
 local_info_t *local = (local_info_t *) data;
 struct net_device *dev = local->dev;
 u16 ev;
 int frames = 30;

 if (local->func->card_present && !local->func->card_present(local))
  return;

 set_bit(HOSTAP_BITS_BAP_TASKLET, &local->bits);



 while (frames-- > 0) {
  ev = HFA384X_INW(HFA384X_EVSTAT_OFF);
  if (ev == 0xffff || !(ev & HFA384X_BAP0_EVENTS))
   break;
  if (ev & HFA384X_EV_RX)
   prism2_rx(local);
  if (ev & HFA384X_EV_INFO)
   prism2_info(local);
  if (ev & HFA384X_EV_TX)
   prism2_tx_ev(local);
  if (ev & HFA384X_EV_TXEXC)
   prism2_txexc(local);
 }

 set_bit(HOSTAP_BITS_BAP_TASKLET2, &local->bits);
 clear_bit(HOSTAP_BITS_BAP_TASKLET, &local->bits);


 hfa384x_events_all(dev);
 clear_bit(HOSTAP_BITS_BAP_TASKLET2, &local->bits);
}
