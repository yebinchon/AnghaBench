
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct esp {int dummy; } ;
struct TYPE_2__ {int error; } ;


 TYPE_1__* MAC_ESP_GET_PRIV (struct esp*) ;

__attribute__((used)) static int mac_esp_dma_error(struct esp *esp)
{
 return MAC_ESP_GET_PRIV(esp)->error;
}
