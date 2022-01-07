
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int EGPIO_MAGICIAN_CABLE_STATE_AC ;
 int gpio_free (int ) ;

__attribute__((used)) static void power_supply_exit(struct device *dev)
{
 gpio_free(EGPIO_MAGICIAN_CABLE_STATE_AC);
}
