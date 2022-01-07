
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct hv_ring_buffer_info {int ring_lock; } ;


 int EAGAIN ;
 scalar_t__ hv_copyfrom_ringbuffer (struct hv_ring_buffer_info*,void*,scalar_t__,scalar_t__) ;
 scalar_t__ hv_get_next_read_location (struct hv_ring_buffer_info*) ;
 int hv_get_ringbuffer_availbytes (struct hv_ring_buffer_info*,scalar_t__*,scalar_t__*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int hv_ringbuffer_peek(struct hv_ring_buffer_info *Inring_info,
     void *Buffer, u32 buflen)
{
 u32 bytes_avail_towrite;
 u32 bytes_avail_toread;
 u32 next_read_location = 0;
 unsigned long flags;

 spin_lock_irqsave(&Inring_info->ring_lock, flags);

 hv_get_ringbuffer_availbytes(Inring_info,
    &bytes_avail_toread,
    &bytes_avail_towrite);


 if (bytes_avail_toread < buflen) {

  spin_unlock_irqrestore(&Inring_info->ring_lock, flags);

  return -EAGAIN;
 }


 next_read_location = hv_get_next_read_location(Inring_info);

 next_read_location = hv_copyfrom_ringbuffer(Inring_info,
      Buffer,
      buflen,
      next_read_location);

 spin_unlock_irqrestore(&Inring_info->ring_lock, flags);

 return 0;
}
