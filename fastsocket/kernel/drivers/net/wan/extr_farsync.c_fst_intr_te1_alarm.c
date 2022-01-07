
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct fst_port_info {int dummy; } ;
struct fst_card_info {int dummy; } ;
struct TYPE_2__ {int alarmIndicationSignal; int receiveRemoteAlarm; int lossOfSignal; } ;


 int DBG_INTR ;
 scalar_t__ FST_RDB (struct fst_card_info*,int ) ;
 int dbg (int ,char*) ;
 int netif_carrier_off (int ) ;
 scalar_t__ netif_carrier_ok (int ) ;
 int netif_carrier_on (int ) ;
 int port_to_dev (struct fst_port_info*) ;
 TYPE_1__ suStatus ;

__attribute__((used)) static void
fst_intr_te1_alarm(struct fst_card_info *card, struct fst_port_info *port)
{
 u8 los;
 u8 rra;
 u8 ais;

 los = FST_RDB(card, suStatus.lossOfSignal);
 rra = FST_RDB(card, suStatus.receiveRemoteAlarm);
 ais = FST_RDB(card, suStatus.alarmIndicationSignal);

 if (los) {



  if (netif_carrier_ok(port_to_dev(port))) {
   dbg(DBG_INTR, "Net carrier off\n");
   netif_carrier_off(port_to_dev(port));
  }
 } else {



  if (!netif_carrier_ok(port_to_dev(port))) {
   dbg(DBG_INTR, "Net carrier on\n");
   netif_carrier_on(port_to_dev(port));
  }
 }

 if (los)
  dbg(DBG_INTR, "Assert LOS Alarm\n");
 else
  dbg(DBG_INTR, "De-assert LOS Alarm\n");
 if (rra)
  dbg(DBG_INTR, "Assert RRA Alarm\n");
 else
  dbg(DBG_INTR, "De-assert RRA Alarm\n");

 if (ais)
  dbg(DBG_INTR, "Assert AIS Alarm\n");
 else
  dbg(DBG_INTR, "De-assert AIS Alarm\n");
}
