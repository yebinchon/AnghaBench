
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* os_context; } ;
typedef TYPE_1__ divas_um_idi_entity_t ;



void *diva_um_id_get_os_context(void *entity)
{
 return (((divas_um_idi_entity_t *) entity)->os_context);
}
