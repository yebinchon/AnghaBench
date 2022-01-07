
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int buffers; } ;
struct ivtv_stream {scalar_t__ type; int name; int waitq; TYPE_2__ q_full; int s_flags; int dma_pts; TYPE_2__ q_io; int q_free; struct ivtv* itv; } ;
struct ivtv_buffer {scalar_t__ readpos; scalar_t__ bytesused; int b_flags; } ;
struct TYPE_3__ {struct ivtv_buffer sliced_mpeg_buf; } ;
struct ivtv {TYPE_1__ vbi; scalar_t__ dualwatch_jiffies; struct ivtv_stream* streams; } ;


 int DEFINE_WAIT (int ) ;
 int EAGAIN ;
 int EINTR ;
 int IVTV_DEBUG_INFO (char*,int ) ;
 scalar_t__ IVTV_DEC_STREAM_TYPE_VBI ;
 scalar_t__ IVTV_ENC_STREAM_TYPE_MPG ;
 size_t IVTV_ENC_STREAM_TYPE_VBI ;
 int IVTV_F_B_NEED_BUF_SWAP ;
 int IVTV_F_S_APPL_IO ;
 int IVTV_F_S_INTERNAL_USE ;
 int IVTV_F_S_STREAMING ;
 int TASK_INTERRUPTIBLE ;
 int current ;
 int finish_wait (int *,int *) ;
 int ivtv_buf_swap (struct ivtv_buffer*) ;
 struct ivtv_buffer* ivtv_dequeue (struct ivtv_stream*,TYPE_2__*) ;
 int ivtv_dualwatch (struct ivtv*) ;
 int ivtv_enqueue (struct ivtv_stream*,struct ivtv_buffer*,int *) ;
 int ivtv_process_vbi_data (struct ivtv*,struct ivtv_buffer*,int ,scalar_t__) ;
 int ivtv_update_pgm_info (struct ivtv*) ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule () ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ test_bit (int ,int *) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int wait ;

__attribute__((used)) static struct ivtv_buffer *ivtv_get_buffer(struct ivtv_stream *s, int non_block, int *err)
{
 struct ivtv *itv = s->itv;
 struct ivtv_stream *s_vbi = &itv->streams[IVTV_ENC_STREAM_TYPE_VBI];
 struct ivtv_buffer *buf;
 DEFINE_WAIT(wait);

 *err = 0;
 while (1) {
  if (s->type == IVTV_ENC_STREAM_TYPE_MPG) {

   ivtv_update_pgm_info(itv);

   if (time_after(jiffies,
           itv->dualwatch_jiffies +
           msecs_to_jiffies(1000))) {
    itv->dualwatch_jiffies = jiffies;
    ivtv_dualwatch(itv);
   }

   if (test_bit(IVTV_F_S_INTERNAL_USE, &s_vbi->s_flags) &&
       !test_bit(IVTV_F_S_APPL_IO, &s_vbi->s_flags)) {
    while ((buf = ivtv_dequeue(s_vbi, &s_vbi->q_full))) {

     ivtv_process_vbi_data(itv, buf, s_vbi->dma_pts, s_vbi->type);
     ivtv_enqueue(s_vbi, buf, &s_vbi->q_free);
    }
   }
   buf = &itv->vbi.sliced_mpeg_buf;
   if (buf->readpos != buf->bytesused) {
    return buf;
   }
  }


  buf = ivtv_dequeue(s, &s->q_io);
  if (buf)
   return buf;


  buf = ivtv_dequeue(s, &s->q_full);
  if (buf) {
   if ((buf->b_flags & IVTV_F_B_NEED_BUF_SWAP) == 0)
    return buf;
   buf->b_flags &= ~IVTV_F_B_NEED_BUF_SWAP;
   if (s->type == IVTV_ENC_STREAM_TYPE_MPG)

    ivtv_buf_swap(buf);
   else if (s->type != IVTV_DEC_STREAM_TYPE_VBI) {

    ivtv_process_vbi_data(itv, buf, s->dma_pts, s->type);
   }
   return buf;
  }


  if (s->type != IVTV_DEC_STREAM_TYPE_VBI && !test_bit(IVTV_F_S_STREAMING, &s->s_flags)) {
   IVTV_DEBUG_INFO("EOS %s\n", s->name);
   return ((void*)0);
  }


  if (non_block) {
   *err = -EAGAIN;
   return ((void*)0);
  }


  prepare_to_wait(&s->waitq, &wait, TASK_INTERRUPTIBLE);

  if (!s->q_full.buffers)
   schedule();
  finish_wait(&s->waitq, &wait);
  if (signal_pending(current)) {

   IVTV_DEBUG_INFO("User stopped %s\n", s->name);
   *err = -EINTR;
   return ((void*)0);
  }
 }
}
