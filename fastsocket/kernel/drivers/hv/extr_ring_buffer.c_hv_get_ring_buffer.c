
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hv_ring_buffer_info {TYPE_1__* ring_buffer; } ;
struct TYPE_2__ {scalar_t__ buffer; } ;



__attribute__((used)) static inline void *
hv_get_ring_buffer(struct hv_ring_buffer_info *ring_info)
{
 return (void *)ring_info->ring_buffer->buffer;
}
