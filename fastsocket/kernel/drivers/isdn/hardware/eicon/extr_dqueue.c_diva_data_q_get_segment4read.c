
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void const** data; size_t read; scalar_t__ count; } ;
typedef TYPE_1__ diva_um_idi_data_queue_t ;



const void *diva_data_q_get_segment4read(const diva_um_idi_data_queue_t *
      q)
{
 if (q->count) {
  return (q->data[q->read]);
 }
 return ((void*)0);
}
