
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int EGPIO_MAGICIAN_CABLE_STATE_AC ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static int power_supply_init(struct device *dev)
{
 return gpio_request(EGPIO_MAGICIAN_CABLE_STATE_AC, "CABLE_STATE_AC");
}
