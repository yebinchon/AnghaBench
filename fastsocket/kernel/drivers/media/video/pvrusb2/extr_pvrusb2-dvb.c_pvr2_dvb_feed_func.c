
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pvr2_stream {int dummy; } ;
struct TYPE_4__ {TYPE_1__* stream; } ;
struct pvr2_dvb_adapter {int buffer_wait_data; int * buffer_storage; int demux; TYPE_2__ channel; } ;
struct pvr2_buffer {int dummy; } ;
struct TYPE_3__ {struct pvr2_stream* stream; } ;


 int PVR2_TRACE_DVB_FEED ;
 int dvb_dmx_swfilter (int *,int ,unsigned int) ;
 scalar_t__ kthread_should_stop () ;
 unsigned int pvr2_buffer_get_count (struct pvr2_buffer*) ;
 size_t pvr2_buffer_get_id (struct pvr2_buffer*) ;
 int pvr2_buffer_get_status (struct pvr2_buffer*) ;
 int pvr2_buffer_queue (struct pvr2_buffer*) ;
 struct pvr2_buffer* pvr2_stream_get_ready_buffer (struct pvr2_stream*) ;
 scalar_t__ pvr2_stream_get_ready_count (struct pvr2_stream*) ;
 int pvr2_trace (int ,char*) ;
 int set_freezable () ;
 int try_to_freeze () ;
 int wait_event_interruptible (int ,int) ;

__attribute__((used)) static int pvr2_dvb_feed_func(struct pvr2_dvb_adapter *adap)
{
 int ret;
 unsigned int count;
 struct pvr2_buffer *bp;
 struct pvr2_stream *stream;

 pvr2_trace(PVR2_TRACE_DVB_FEED, "dvb feed thread started");
 set_freezable();

 stream = adap->channel.stream->stream;

 for (;;) {
  if (kthread_should_stop()) break;


  try_to_freeze();

  bp = pvr2_stream_get_ready_buffer(stream);
  if (bp != ((void*)0)) {
   count = pvr2_buffer_get_count(bp);
   if (count) {
    dvb_dmx_swfilter(
     &adap->demux,
     adap->buffer_storage[
         pvr2_buffer_get_id(bp)],
     count);
   } else {
    ret = pvr2_buffer_get_status(bp);
    if (ret < 0) break;
   }
   ret = pvr2_buffer_queue(bp);
   if (ret < 0) break;





   continue;
  }




  ret = wait_event_interruptible(
      adap->buffer_wait_data,
      (pvr2_stream_get_ready_count(stream) > 0) ||
      kthread_should_stop());
  if (ret < 0) break;
 }




 pvr2_trace(PVR2_TRACE_DVB_FEED, "dvb feed thread stopped");

 return 0;
}
