
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int segment_pending; scalar_t__ count; scalar_t__ segments; void** data; size_t write; } ;
typedef TYPE_1__ diva_um_idi_data_queue_t ;



void *diva_data_q_get_segment4write(diva_um_idi_data_queue_t * q)
{
 if ((!q->segment_pending) && (q->count < q->segments)) {
  q->segment_pending = 1;
  return (q->data[q->write]);
 }

 return ((void*)0);
}
