
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* length; size_t write; size_t segments; scalar_t__ segment_pending; int count; } ;
typedef TYPE_1__ diva_um_idi_data_queue_t ;



void
diva_data_q_ack_segment4write(diva_um_idi_data_queue_t * q, int length)
{
 if (q->segment_pending) {
  q->length[q->write] = length;
  q->count++;
  q->write++;
  if (q->write >= q->segments) {
   q->write = 0;
  }
  q->segment_pending = 0;
 }
}
