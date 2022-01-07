
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* length; size_t read; } ;
typedef TYPE_1__ diva_um_idi_data_queue_t ;



int diva_data_q_get_segment_length(const diva_um_idi_data_queue_t * q)
{
 return (q->length[q->read]);
}
