
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct hv_ring_buffer_info {scalar_t__ ring_datasize; TYPE_1__* ring_buffer; } ;
struct TYPE_2__ {scalar_t__ write_index; scalar_t__ read_index; scalar_t__ pending_send_sz; } ;



__attribute__((used)) static bool hv_need_to_signal_on_read(u32 old_rd,
      struct hv_ring_buffer_info *rbi)
{
 u32 prev_write_sz;
 u32 cur_write_sz;
 u32 r_size;
 u32 write_loc = rbi->ring_buffer->write_index;
 u32 read_loc = rbi->ring_buffer->read_index;
 u32 pending_sz = rbi->ring_buffer->pending_send_sz;




 if (pending_sz == 0)
  return 0;

 r_size = rbi->ring_datasize;
 cur_write_sz = write_loc >= read_loc ? r_size - (write_loc - read_loc) :
   read_loc - write_loc;

 prev_write_sz = write_loc >= old_rd ? r_size - (write_loc - old_rd) :
   old_rd - write_loc;


 if ((prev_write_sz < pending_sz) && (cur_write_sz >= pending_sz))
  return 1;

 return 0;
}
