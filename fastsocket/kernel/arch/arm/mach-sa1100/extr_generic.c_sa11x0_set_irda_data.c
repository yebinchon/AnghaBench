
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct irda_platform_data {int dummy; } ;
struct TYPE_3__ {struct irda_platform_data* platform_data; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 TYPE_2__ sa11x0ir_device ;

void sa11x0_set_irda_data(struct irda_platform_data *irda)
{
 sa11x0ir_device.dev.platform_data = irda;
}
