
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00debug_intf {int frame_dump_skbqueue; int frame_dump_waitqueue; } ;
struct file {struct rt2x00debug_intf* private_data; } ;
typedef int poll_table ;


 unsigned int POLLOUT ;
 unsigned int POLLWRNORM ;
 int poll_wait (struct file*,int *,int *) ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static unsigned int rt2x00debug_poll_queue_dump(struct file *file,
      poll_table *wait)
{
 struct rt2x00debug_intf *intf = file->private_data;

 poll_wait(file, &intf->frame_dump_waitqueue, wait);

 if (!skb_queue_empty(&intf->frame_dump_skbqueue))
  return POLLOUT | POLLWRNORM;

 return 0;
}
