
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pvr2_stream {int dummy; } ;
struct TYPE_4__ {int hdw; TYPE_1__* stream; } ;
struct pvr2_dvb_adapter {scalar_t__ stream_run; int ** buffer_storage; TYPE_2__ channel; int * thread; } ;
struct TYPE_3__ {struct pvr2_stream* stream; } ;


 unsigned int PVR2_DVB_BUFFER_COUNT ;
 int kfree (int *) ;
 int kthread_stop (int *) ;
 int pvr2_channel_claim_stream (TYPE_2__*,int *) ;
 int pvr2_hdw_set_streaming (int ,int ) ;
 int pvr2_stream_kill (struct pvr2_stream*) ;
 int pvr2_stream_set_buffer_count (struct pvr2_stream*,int ) ;
 int pvr2_stream_set_callback (struct pvr2_stream*,int *,int *) ;

__attribute__((used)) static void pvr2_dvb_stream_end(struct pvr2_dvb_adapter *adap)
{
 unsigned int idx;
 struct pvr2_stream *stream;

 if (adap->thread) {
  kthread_stop(adap->thread);
  adap->thread = ((void*)0);
 }

 if (adap->channel.stream) {
  stream = adap->channel.stream->stream;
 } else {
  stream = ((void*)0);
 }
 if (stream) {
  pvr2_hdw_set_streaming(adap->channel.hdw, 0);
  pvr2_stream_set_callback(stream, ((void*)0), ((void*)0));
  pvr2_stream_kill(stream);
  pvr2_stream_set_buffer_count(stream, 0);
  pvr2_channel_claim_stream(&adap->channel, ((void*)0));
 }

 if (adap->stream_run) {
  for (idx = 0; idx < PVR2_DVB_BUFFER_COUNT; idx++) {
   if (!(adap->buffer_storage[idx])) continue;
   kfree(adap->buffer_storage[idx]);
   adap->buffer_storage[idx] = ((void*)0);
  }
  adap->stream_run = 0;
 }
}
