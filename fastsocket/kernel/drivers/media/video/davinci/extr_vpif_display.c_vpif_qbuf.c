
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vpif_fh {int * io_allowed; struct channel_obj* channel; } ;
struct videobuf_buffer {int memory; scalar_t__ state; unsigned long boff; int stream; int baddr; int bsize; } ;
struct TYPE_7__ {int userptr; } ;
struct v4l2_buffer {scalar_t__ type; size_t index; int memory; TYPE_2__ m; int length; } ;
struct file {int dummy; } ;
struct TYPE_8__ {int vb_lock; int stream; int field; struct videobuf_buffer** bufs; } ;
struct TYPE_6__ {scalar_t__ type; } ;
struct common_obj {TYPE_3__ buffer_queue; scalar_t__ cbtm_off; scalar_t__ ctop_off; scalar_t__ ybtm_off; scalar_t__ ytop_off; int (* set_addr ) (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;struct videobuf_buffer* next_frm; scalar_t__ started; struct videobuf_buffer* cur_frm; int dma_queue; TYPE_1__ fmt; } ;
struct channel_obj {scalar_t__ field_id; struct common_obj* common; } ;


 int EACCES ;
 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_SLICED_VBI_OUTPUT ;


 scalar_t__ VIDEOBUF_ACTIVE ;
 scalar_t__ VIDEOBUF_NEEDS_INIT ;
 scalar_t__ VIDEOBUF_QUEUED ;
 size_t VPIF_VIDEO_INDEX ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int videobuf_qbuf (TYPE_3__*,struct v4l2_buffer*) ;
 int vpif_buffer_prepare (TYPE_3__*,struct videobuf_buffer*,int ) ;
 int vpif_buffer_release (TYPE_3__*,struct videobuf_buffer*) ;
 int vpif_err (char*) ;

__attribute__((used)) static int vpif_qbuf(struct file *file, void *priv, struct v4l2_buffer *buf)
{

 struct vpif_fh *fh = priv;
 struct channel_obj *ch = fh->channel;
 struct common_obj *common = &ch->common[VPIF_VIDEO_INDEX];
 struct v4l2_buffer tbuf = *buf;
 struct videobuf_buffer *buf1;
 unsigned long addr = 0;
 unsigned long flags;
 int ret = 0;

 if (common->fmt.type != tbuf.type)
  return -EINVAL;

 if (!fh->io_allowed[VPIF_VIDEO_INDEX]) {
  vpif_err("fh->io_allowed\n");
  return -EACCES;
 }

 if (!(list_empty(&common->dma_queue)) ||
     (common->cur_frm != common->next_frm) ||
     !(common->started) ||
     (common->started && (0 == ch->field_id)))
  return videobuf_qbuf(&common->buffer_queue, buf);


 mutex_lock(&common->buffer_queue.vb_lock);
 buf1 = common->buffer_queue.bufs[tbuf.index];
 if (buf1->memory != tbuf.memory) {
  vpif_err("invalid buffer type\n");
  goto qbuf_exit;
 }

 if ((buf1->state == VIDEOBUF_QUEUED) ||
     (buf1->state == VIDEOBUF_ACTIVE)) {
  vpif_err("invalid state\n");
  goto qbuf_exit;
 }

 switch (buf1->memory) {
 case 129:
  if (buf1->baddr == 0)
   goto qbuf_exit;
  break;

 case 128:
  if (tbuf.length < buf1->bsize)
   goto qbuf_exit;

  if ((VIDEOBUF_NEEDS_INIT != buf1->state)
       && (buf1->baddr != tbuf.m.userptr))
   vpif_buffer_release(&common->buffer_queue, buf1);
   buf1->baddr = tbuf.m.userptr;
  break;

 default:
  goto qbuf_exit;
 }

 local_irq_save(flags);
 ret = vpif_buffer_prepare(&common->buffer_queue, buf1,
     common->buffer_queue.field);
 if (ret < 0) {
  local_irq_restore(flags);
  goto qbuf_exit;
 }

 buf1->state = VIDEOBUF_ACTIVE;
 addr = buf1->boff;
 common->next_frm = buf1;
 if (tbuf.type != V4L2_BUF_TYPE_SLICED_VBI_OUTPUT) {
  common->set_addr((addr + common->ytop_off),
     (addr + common->ybtm_off),
     (addr + common->ctop_off),
     (addr + common->cbtm_off));
 }

 local_irq_restore(flags);
 list_add_tail(&buf1->stream, &common->buffer_queue.stream);
 mutex_unlock(&common->buffer_queue.vb_lock);
 return 0;

qbuf_exit:
 mutex_unlock(&common->buffer_queue.vb_lock);
 return -EINVAL;
}
