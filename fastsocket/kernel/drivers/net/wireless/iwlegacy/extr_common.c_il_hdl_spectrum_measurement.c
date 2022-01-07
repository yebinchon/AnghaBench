
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct il_spectrum_notification {int state; } ;
struct TYPE_2__ {struct il_spectrum_notification spectrum_notif; } ;
struct il_rx_pkt {TYPE_1__ u; } ;
struct il_rx_buf {int dummy; } ;
struct il_priv {int measurement_status; int measure_report; } ;


 int D_11H (char*) ;
 int MEASUREMENT_READY ;
 int memcpy (int *,struct il_spectrum_notification*,int) ;
 struct il_rx_pkt* rxb_addr (struct il_rx_buf*) ;

void
il_hdl_spectrum_measurement(struct il_priv *il, struct il_rx_buf *rxb)
{
 struct il_rx_pkt *pkt = rxb_addr(rxb);
 struct il_spectrum_notification *report = &(pkt->u.spectrum_notif);

 if (!report->state) {
  D_11H("Spectrum Measure Notification: Start\n");
  return;
 }

 memcpy(&il->measure_report, report, sizeof(*report));
 il->measurement_status |= MEASUREMENT_READY;
}
