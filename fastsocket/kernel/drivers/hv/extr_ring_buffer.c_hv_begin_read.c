
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hv_ring_buffer_info {TYPE_1__* ring_buffer; } ;
struct TYPE_2__ {int interrupt_mask; } ;


 int mb () ;

void hv_begin_read(struct hv_ring_buffer_info *rbi)
{
 rbi->ring_buffer->interrupt_mask = 1;
 mb();
}
