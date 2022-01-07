
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DSPICS_RST_B ;
 int TRSLAT_RST_B ;
 int gpio_direction_output (int ,int) ;
 int gpio_export (int ,int) ;
 int gpio_request (int ,char*) ;

__attribute__((used)) static void dspics_resets_init(void)
{
 if (!gpio_request(TRSLAT_RST_B, "translator-rst")) {
  gpio_direction_output(TRSLAT_RST_B, 1);
  gpio_export(TRSLAT_RST_B, 0);
 }

 if (!gpio_request(DSPICS_RST_B, "dspics-rst")) {
  gpio_direction_output(DSPICS_RST_B, 1);
  gpio_export(DSPICS_RST_B, 0);
 }
}
