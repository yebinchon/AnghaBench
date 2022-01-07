
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ Id; } ;
struct TYPE_5__ {int rc; int data; int status; scalar_t__ rc_count; TYPE_1__ e; int * adapter; int * os_ref; } ;
typedef TYPE_2__ divas_um_idi_entity_t ;


 int DIVA_UM_IDI_REMOVED ;
 int DIVA_UM_IDI_REMOVE_PENDING ;
 int diva_data_q_finit (int *) ;

__attribute__((used)) static void cleanup_entity(divas_um_idi_entity_t * e)
{
 e->os_ref = ((void*)0);
 e->status = 0;
 e->adapter = ((void*)0);
 e->e.Id = 0;
 e->rc_count = 0;

 e->status |= DIVA_UM_IDI_REMOVED;
 e->status |= DIVA_UM_IDI_REMOVE_PENDING;

 diva_data_q_finit(&e->data);
 diva_data_q_finit(&e->rc);
}
