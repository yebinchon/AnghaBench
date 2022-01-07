
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_dt9812 {scalar_t__ device; } ;
struct dt9812_rmw_byte {int and_mask; int or_value; int address; } ;


 scalar_t__ DT9812_DEVID_DT9812_10 ;
 int F020_SFR_AMX0SL ;
 int F020_SFR_P1 ;

__attribute__((used)) static void dt9812_configure_mux(struct usb_dt9812 *dev,
     struct dt9812_rmw_byte *rmw, int channel)
{
 if (dev->device == DT9812_DEVID_DT9812_10) {

  rmw->address = F020_SFR_P1;
  rmw->and_mask = 0xe0;
  rmw->or_value = channel << 5;
 } else {

  rmw->address = F020_SFR_AMX0SL;
  rmw->and_mask = 0xff;
  rmw->or_value = channel & 0x07;
 }
}
