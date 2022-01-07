
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ene_device {int rdev; scalar_t__ carrier_detect_enabled; } ;
struct TYPE_4__ {int carrier_report; int carrier; int duty_cycle; } ;


 int DEFINE_IR_RAW_EVENT (TYPE_1__) ;
 int ENE_CIRCAR_HPRD ;
 int ENE_CIRCAR_PRD ;
 int ENE_CIRCAR_PRD_VALID ;
 int dbg (char*,int,...) ;
 int ene_read_reg (struct ene_device*,int ) ;
 TYPE_1__ ev ;
 int ir_raw_event_store (int ,TYPE_1__*) ;

void ene_rx_sense_carrier(struct ene_device *dev)
{
 DEFINE_IR_RAW_EVENT(ev);

 int carrier, duty_cycle;
 int period = ene_read_reg(dev, ENE_CIRCAR_PRD);
 int hperiod = ene_read_reg(dev, ENE_CIRCAR_HPRD);

 if (!(period & ENE_CIRCAR_PRD_VALID))
  return;

 period &= ~ENE_CIRCAR_PRD_VALID;

 if (!period)
  return;

 dbg("RX: hardware carrier period = %02x", period);
 dbg("RX: hardware carrier pulse period = %02x", hperiod);

 carrier = 2000000 / period;
 duty_cycle = (hperiod * 100) / period;
 dbg("RX: sensed carrier = %d Hz, duty cycle %d%%",
      carrier, duty_cycle);
 if (dev->carrier_detect_enabled) {
  ev.carrier_report = 1;
  ev.carrier = carrier;
  ev.duty_cycle = duty_cycle;
  ir_raw_event_store(dev->rdev, &ev);
 }
}
