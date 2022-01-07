
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ buffer_pos ;
 int buffer_size ;
 int buffer_watershed ;
 int event_buffer ;
 int oprofile_buffer_size ;
 int oprofile_buffer_watershed ;
 int oprofilefs_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int vmalloc (int) ;

int alloc_event_buffer(void)
{
 unsigned long flags;

 spin_lock_irqsave(&oprofilefs_lock, flags);
 buffer_size = oprofile_buffer_size;
 buffer_watershed = oprofile_buffer_watershed;
 spin_unlock_irqrestore(&oprofilefs_lock, flags);

 if (buffer_watershed >= buffer_size)
  return -EINVAL;

 buffer_pos = 0;
 event_buffer = vmalloc(sizeof(unsigned long) * buffer_size);
 if (!event_buffer)
  return -ENOMEM;

 return 0;
}
