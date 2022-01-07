
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct hv_ring_buffer_info {TYPE_1__* ring_buffer; } ;
struct TYPE_2__ {scalar_t__ read_index; scalar_t__ interrupt_mask; } ;


 int mb () ;
 int rmb () ;

__attribute__((used)) static bool hv_need_to_signal(u32 old_write, struct hv_ring_buffer_info *rbi)
{
 mb();
 if (rbi->ring_buffer->interrupt_mask)
  return 0;


 rmb();




 if (old_write == rbi->ring_buffer->read_index)
  return 1;

 return 0;
}
