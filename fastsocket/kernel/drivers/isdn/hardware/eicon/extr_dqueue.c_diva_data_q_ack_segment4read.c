
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t read; size_t segments; scalar_t__ count; scalar_t__* length; } ;
typedef TYPE_1__ diva_um_idi_data_queue_t ;



void diva_data_q_ack_segment4read(diva_um_idi_data_queue_t * q)
{
 if (q->count) {
  q->length[q->read] = 0;
  q->count--;
  q->read++;
  if (q->read >= q->segments) {
   q->read = 0;
  }
 }
}
