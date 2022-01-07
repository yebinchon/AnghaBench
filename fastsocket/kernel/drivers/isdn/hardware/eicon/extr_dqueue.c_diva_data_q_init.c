
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int max_length; int segments; int ** data; scalar_t__ segment_pending; scalar_t__ count; scalar_t__ write; scalar_t__ read; scalar_t__* length; } ;
typedef TYPE_1__ diva_um_idi_data_queue_t ;


 int diva_data_q_finit (TYPE_1__*) ;
 int * diva_os_malloc (int ,int) ;

int
diva_data_q_init(diva_um_idi_data_queue_t * q,
   int max_length, int max_segments)
{
 int i;

 q->max_length = max_length;
 q->segments = max_segments;

 for (i = 0; i < q->segments; i++) {
  q->data[i] = ((void*)0);
  q->length[i] = 0;
 }
 q->read = q->write = q->count = q->segment_pending = 0;

 for (i = 0; i < q->segments; i++) {
  if (!(q->data[i] = diva_os_malloc(0, q->max_length))) {
   diva_data_q_finit(q);
   return (-1);
  }
 }

 return (0);
}
