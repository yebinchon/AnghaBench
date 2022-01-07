
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t vend_idx; int led_state; } ;
typedef TYPE_1__ hfcusb_data ;
struct TYPE_8__ {scalar_t__ led_scheme; int * led_bits; } ;
typedef TYPE_2__ hfcsusb_vdata ;
struct TYPE_9__ {scalar_t__ driver_info; } ;






 scalar_t__ LED_OFF ;




 TYPE_5__* hfcusb_idtab ;
 int set_led_bit (TYPE_1__*,int ,int) ;
 int write_led (TYPE_1__*,int ) ;

__attribute__((used)) static void
handle_led(hfcusb_data * hfc, int event)
{
 hfcsusb_vdata *driver_info =
     (hfcsusb_vdata *) hfcusb_idtab[hfc->vend_idx].driver_info;


 if (driver_info->led_scheme == LED_OFF)
  return;

 switch (event) {
  case 130:
   set_led_bit(hfc, driver_info->led_bits[0], 1);
   set_led_bit(hfc, driver_info->led_bits[1], 0);
   set_led_bit(hfc, driver_info->led_bits[2], 0);
   set_led_bit(hfc, driver_info->led_bits[3], 0);
   break;
  case 131:
   set_led_bit(hfc, driver_info->led_bits[0], 0);
   set_led_bit(hfc, driver_info->led_bits[1], 0);
   set_led_bit(hfc, driver_info->led_bits[2], 0);
   set_led_bit(hfc, driver_info->led_bits[3], 0);
   break;
  case 128:
   set_led_bit(hfc, driver_info->led_bits[1], 1);
   break;
  case 129:
   set_led_bit(hfc, driver_info->led_bits[1], 0);
   break;
  case 134:
   set_led_bit(hfc, driver_info->led_bits[2], 1);
   break;
  case 135:
   set_led_bit(hfc, driver_info->led_bits[2], 0);
   break;
  case 132:
   set_led_bit(hfc, driver_info->led_bits[3], 1);
   break;
  case 133:
   set_led_bit(hfc, driver_info->led_bits[3], 0);
   break;
 }
 write_led(hfc, hfc->led_state);
}
