
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int segments; scalar_t__ segment_pending; scalar_t__ count; scalar_t__ write; scalar_t__ read; scalar_t__* length; int ** data; } ;
typedef TYPE_1__ diva_um_idi_data_queue_t ;


 int diva_os_free (int ,int *) ;

int diva_data_q_finit(diva_um_idi_data_queue_t * q)
{
 int i;

 for (i = 0; i < q->segments; i++) {
  if (q->data[i]) {
   diva_os_free(0, q->data[i]);
  }
  q->data[i] = ((void*)0);
  q->length[i] = 0;
 }
 q->read = q->write = q->count = q->segment_pending = 0;

 return (0);
}
