
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct esp {TYPE_1__* target; } ;
struct TYPE_2__ {int esp_config3; } ;


 int ESP_MAX_TARGET ;

__attribute__((used)) static void esp_set_all_config3(struct esp *esp, u8 val)
{
 int i;

 for (i = 0; i < ESP_MAX_TARGET; i++)
  esp->target[i].esp_config3 = val;
}
