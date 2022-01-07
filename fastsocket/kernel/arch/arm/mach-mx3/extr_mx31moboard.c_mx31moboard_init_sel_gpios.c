
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEL0 ;
 int SEL1 ;
 int SEL2 ;
 int SEL3 ;
 int gpio_direction_input (int ) ;
 int gpio_export (int ,int) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static void mx31moboard_init_sel_gpios(void)
{
 if (!gpio_request(SEL0, "sel0")) {
  gpio_direction_input(SEL0);
  gpio_export(SEL0, 1);
 }

 if (!gpio_request(SEL1, "sel1")) {
  gpio_direction_input(SEL1);
  gpio_export(SEL1, 1);
 }

 if (!gpio_request(SEL2, "sel2")) {
  gpio_direction_input(SEL2);
  gpio_export(SEL2, 1);
 }

 if (!gpio_request(SEL3, "sel3")) {
  gpio_direction_input(SEL3);
  gpio_export(SEL3, 1);
 }
}
