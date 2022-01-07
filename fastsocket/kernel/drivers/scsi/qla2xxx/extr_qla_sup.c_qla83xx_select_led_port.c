
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ port0; } ;
struct qla_hw_data {TYPE_1__ flags; } ;


 int IS_QLA83XX (struct qla_hw_data*) ;
 int QLA83XX_LED_PORT0 ;
 int QLA83XX_LED_PORT1 ;

__attribute__((used)) static uint32_t
qla83xx_select_led_port(struct qla_hw_data *ha)
{
 uint32_t led_select_value = 0;

 if (!IS_QLA83XX(ha))
  goto out;

 if (ha->flags.port0)
  led_select_value = QLA83XX_LED_PORT0;
 else
  led_select_value = QLA83XX_LED_PORT1;

out:
 return led_select_value;
}
