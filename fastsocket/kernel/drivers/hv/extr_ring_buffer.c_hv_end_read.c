
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hv_ring_buffer_info {TYPE_1__* ring_buffer; } ;
struct TYPE_2__ {scalar_t__ interrupt_mask; } ;


 int hv_get_ringbuffer_availbytes (struct hv_ring_buffer_info*,int *,int *) ;
 int mb () ;

u32 hv_end_read(struct hv_ring_buffer_info *rbi)
{
 u32 read;
 u32 write;

 rbi->ring_buffer->interrupt_mask = 0;
 mb();






 hv_get_ringbuffer_availbytes(rbi, &read, &write);

 return read;
}
