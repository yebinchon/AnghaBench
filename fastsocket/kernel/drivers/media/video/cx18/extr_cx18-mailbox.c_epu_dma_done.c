
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx18_stream {int mdl_base_idx; int buffers; scalar_t__ type; int id; int waitq; int q_full; int q_free; int name; } ;
struct cx18_mdl_ack {int id; int data_used; } ;
struct cx18_mdl {int bytesused; } ;
struct cx18_mailbox {int* args; int request; } ;
struct cx18_in_work_order {int flags; struct cx18_mdl_ack* mdl_ack; struct cx18_mailbox mb; } ;
struct cx18 {int dma_waitq; int * pcm_announce_callback; } ;


 int CX18_DEBUG_HI_DMA (char*,int ,int) ;
 scalar_t__ CX18_ENC_STREAM_TYPE_IDX ;
 scalar_t__ CX18_ENC_STREAM_TYPE_PCM ;
 scalar_t__ CX18_ENC_STREAM_TYPE_TS ;
 int CX18_F_EWO_MB_STALE_UPON_RECEIPT ;
 int CX18_WARN (char*,int,...) ;
 int cx18_enqueue (struct cx18_stream*,struct cx18_mdl*,int *) ;
 struct cx18_stream* cx18_handle_to_stream (struct cx18*,int) ;
 int cx18_mdl_send_to_alsa (struct cx18*,struct cx18_stream*,struct cx18_mdl*) ;
 int cx18_mdl_send_to_dvb (struct cx18_stream*,struct cx18_mdl*) ;
 struct cx18_mdl* cx18_queue_get_mdl (struct cx18_stream*,int,int ) ;
 int cx18_stream_load_fw_queue (struct cx18_stream*) ;
 int cx18_stream_rotate_idx_mdls (struct cx18*) ;
 int wake_up (int *) ;

__attribute__((used)) static void epu_dma_done(struct cx18 *cx, struct cx18_in_work_order *order)
{
 u32 handle, mdl_ack_count, id;
 struct cx18_mailbox *mb;
 struct cx18_mdl_ack *mdl_ack;
 struct cx18_stream *s;
 struct cx18_mdl *mdl;
 int i;

 mb = &order->mb;
 handle = mb->args[0];
 s = cx18_handle_to_stream(cx, handle);

 if (s == ((void*)0)) {
  CX18_WARN("Got DMA done notification for unknown/inactive"
     " handle %d, %s mailbox seq no %d\n", handle,
     (order->flags & CX18_F_EWO_MB_STALE_UPON_RECEIPT) ?
     "stale" : "good", mb->request);
  return;
 }

 mdl_ack_count = mb->args[2];
 mdl_ack = order->mdl_ack;
 for (i = 0; i < mdl_ack_count; i++, mdl_ack++) {
  id = mdl_ack->id;
  if ((order->flags & CX18_F_EWO_MB_STALE_UPON_RECEIPT) &&
      !(id >= s->mdl_base_idx &&
        id < (s->mdl_base_idx + s->buffers))) {
   CX18_WARN("Fell behind! Ignoring stale mailbox with "
      " inconsistent data. Lost MDL for mailbox "
      "seq no %d\n", mb->request);
   break;
  }
  mdl = cx18_queue_get_mdl(s, id, mdl_ack->data_used);

  CX18_DEBUG_HI_DMA("DMA DONE for %s (MDL %d)\n", s->name, id);
  if (mdl == ((void*)0)) {
   CX18_WARN("Could not find MDL %d for stream %s\n",
      id, s->name);
   continue;
  }

  CX18_DEBUG_HI_DMA("%s recv bytesused = %d\n",
      s->name, mdl->bytesused);

  if (s->type == CX18_ENC_STREAM_TYPE_TS) {
   cx18_mdl_send_to_dvb(s, mdl);
   cx18_enqueue(s, mdl, &s->q_free);
  } else if (s->type == CX18_ENC_STREAM_TYPE_PCM) {

   if (cx->pcm_announce_callback != ((void*)0)) {
    cx18_mdl_send_to_alsa(cx, s, mdl);
    cx18_enqueue(s, mdl, &s->q_free);
   } else {
    cx18_enqueue(s, mdl, &s->q_full);
   }
  } else {
   cx18_enqueue(s, mdl, &s->q_full);
   if (s->type == CX18_ENC_STREAM_TYPE_IDX)
    cx18_stream_rotate_idx_mdls(cx);
  }
 }

 cx18_stream_load_fw_queue(s);

 wake_up(&cx->dma_waitq);
 if (s->id != -1)
  wake_up(&s->waitq);
}
