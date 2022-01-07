
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_stream {int mutex; int endpoint; int dev; } ;
struct pvr2_buffer {int max_count; int id; int purb; scalar_t__ ptr; int status; struct pvr2_stream* stream; } ;


 int EINPROGRESS ;
 int EINVAL ;
 int EIO ;
 int GFP_KERNEL ;
 int buffer_complete ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pvr2_buffer_set_queued (struct pvr2_buffer*) ;
 int pvr2_buffer_wipe (struct pvr2_buffer*) ;
 int usb_fill_bulk_urb (int ,int ,int ,scalar_t__,int,int ,struct pvr2_buffer*) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_submit_urb (int ,int ) ;

int pvr2_buffer_queue(struct pvr2_buffer *bp)
{





 int ret = 0;
 struct pvr2_stream *sp;
 if (!bp) return -EINVAL;
 sp = bp->stream;
 mutex_lock(&sp->mutex); do {
  pvr2_buffer_wipe(bp);
  if (!sp->dev) {
   ret = -EIO;
   break;
  }
  pvr2_buffer_set_queued(bp);







  bp->status = -EINPROGRESS;
  usb_fill_bulk_urb(bp->purb,
      sp->dev,

      usb_rcvbulkpipe(sp->dev,sp->endpoint),
      bp->ptr,
      bp->max_count,
      buffer_complete,
      bp);
  usb_submit_urb(bp->purb,GFP_KERNEL);
 } while(0); mutex_unlock(&sp->mutex);
 return ret;
}
