
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ default_output_value; scalar_t__ pin_usage; scalar_t__ pull_up; } ;


 scalar_t__ DEFAULT_OUTPUT_LOW ;
 scalar_t__ DISABLE_PULL_UP ;
 scalar_t__ GPIO_IN ;
 int U300_GPIO_MAX ;
 int U300_GPIO_NUM_PORTS ;
 int U300_GPIO_PINS_PER_PORT ;
 int U300_GPIO_PORTX_SPACING ;
 scalar_t__ U300_GPIO_PXPCR ;
 int U300_GPIO_PXPCR_PIN_MODE_MASK ;
 int U300_GPIO_PXPCR_PIN_MODE_OUTPUT_PUSH_PULL ;
 scalar_t__ U300_GPIO_PXPDOR ;
 scalar_t__ U300_GPIO_PXPER ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int readl (scalar_t__) ;
 TYPE_1__** u300_gpio_config ;
 scalar_t__ virtbase ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void gpio_set_initial_values(void)
{
}
