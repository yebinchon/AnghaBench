
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pvr2_stream {int dummy; } ;
struct TYPE_5__ {int hdw; TYPE_1__* stream; struct pvr2_context* mc_head; } ;
struct pvr2_dvb_adapter {int stream_run; int * thread; TYPE_2__ channel; int * buffer_storage; } ;
struct TYPE_6__ {int stream; } ;
struct pvr2_context {TYPE_3__ video_stream; } ;
struct pvr2_buffer {int dummy; } ;
typedef int pvr2_stream_callback ;
struct TYPE_4__ {struct pvr2_stream* stream; } ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 unsigned int PVR2_DVB_BUFFER_COUNT ;
 int PVR2_DVB_BUFFER_SIZE ;
 int kmalloc (int ,int ) ;
 int * kthread_run (int ,struct pvr2_dvb_adapter*,char*) ;
 int pvr2_buffer_queue (struct pvr2_buffer*) ;
 int pvr2_buffer_set_buffer (struct pvr2_buffer*,int ,int ) ;
 int pvr2_channel_claim_stream (TYPE_2__*,TYPE_3__*) ;
 int pvr2_dvb_feed_thread ;
 scalar_t__ pvr2_dvb_notify ;
 int pvr2_hdw_set_streaming (int ,int) ;
 struct pvr2_buffer* pvr2_stream_get_buffer (struct pvr2_stream*,unsigned int) ;
 struct pvr2_buffer* pvr2_stream_get_idle_buffer (struct pvr2_stream*) ;
 int pvr2_stream_set_buffer_count (struct pvr2_stream*,unsigned int) ;
 int pvr2_stream_set_callback (int ,int ,struct pvr2_dvb_adapter*) ;

__attribute__((used)) static int pvr2_dvb_stream_do_start(struct pvr2_dvb_adapter *adap)
{
 struct pvr2_context *pvr = adap->channel.mc_head;
 unsigned int idx;
 int ret;
 struct pvr2_buffer *bp;
 struct pvr2_stream *stream = ((void*)0);

 if (adap->stream_run) return -EIO;

 ret = pvr2_channel_claim_stream(&adap->channel, &pvr->video_stream);

 if (ret < 0) return ret;

 stream = adap->channel.stream->stream;

 for (idx = 0; idx < PVR2_DVB_BUFFER_COUNT; idx++) {
  adap->buffer_storage[idx] = kmalloc(PVR2_DVB_BUFFER_SIZE,
          GFP_KERNEL);
  if (!(adap->buffer_storage[idx])) return -ENOMEM;
 }

 pvr2_stream_set_callback(pvr->video_stream.stream,
     (pvr2_stream_callback) pvr2_dvb_notify, adap);

 ret = pvr2_stream_set_buffer_count(stream, PVR2_DVB_BUFFER_COUNT);
 if (ret < 0) return ret;

 for (idx = 0; idx < PVR2_DVB_BUFFER_COUNT; idx++) {
  bp = pvr2_stream_get_buffer(stream, idx);
  pvr2_buffer_set_buffer(bp,
           adap->buffer_storage[idx],
           PVR2_DVB_BUFFER_SIZE);
 }

 ret = pvr2_hdw_set_streaming(adap->channel.hdw, 1);
 if (ret < 0) return ret;

 while ((bp = pvr2_stream_get_idle_buffer(stream)) != ((void*)0)) {
  ret = pvr2_buffer_queue(bp);
  if (ret < 0) return ret;
 }

 adap->thread = kthread_run(pvr2_dvb_feed_thread, adap, "pvrusb2-dvb");

 if (IS_ERR(adap->thread)) {
  ret = PTR_ERR(adap->thread);
  adap->thread = ((void*)0);
  return ret;
 }

 adap->stream_run = !0;

 return 0;
}
