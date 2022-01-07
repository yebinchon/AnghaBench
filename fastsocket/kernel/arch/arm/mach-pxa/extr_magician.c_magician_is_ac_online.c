
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EGPIO_MAGICIAN_CABLE_STATE_AC ;
 int gpio_get_value (int ) ;

__attribute__((used)) static int magician_is_ac_online(void)
{
 return gpio_get_value(EGPIO_MAGICIAN_CABLE_STATE_AC);
}
