
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct hv_ring_buffer_info {scalar_t__ ring_datasize; TYPE_1__* ring_buffer; } ;
struct TYPE_2__ {scalar_t__ read_index; } ;



__attribute__((used)) static inline u32
hv_get_next_readlocation_withoffset(struct hv_ring_buffer_info *ring_info,
     u32 offset)
{
 u32 next = ring_info->ring_buffer->read_index;

 next += offset;
 next %= ring_info->ring_datasize;

 return next;
}
