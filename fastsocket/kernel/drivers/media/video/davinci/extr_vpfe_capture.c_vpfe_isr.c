
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int field; } ;
struct TYPE_7__ {TYPE_1__ pix; } ;
struct TYPE_8__ {TYPE_2__ fmt; } ;
struct vpfe_device {scalar_t__ cur_frm; scalar_t__ next_frm; int field_id; int dma_queue_lock; int dma_queue; scalar_t__ field_off; int v4l2_dev; int started; TYPE_3__ fmt; } ;
typedef int irqreturn_t ;
typedef enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_9__ {int (* getfid ) () ;int (* setfbaddr ) (unsigned long) ;int (* reset ) () ;} ;
struct TYPE_10__ {TYPE_4__ hw_ops; } ;


 int IRQ_HANDLED ;
 int V4L2_FIELD_NONE ;
 int V4L2_FIELD_SEQ_TB ;
 TYPE_5__* ccdc_dev ;
 int debug ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 () ;
 int stub2 () ;
 int stub3 (unsigned long) ;
 int v4l2_dbg (int,int ,int *,char*,...) ;
 unsigned long videobuf_to_dma_contig (scalar_t__) ;
 int vpfe_process_buffer_complete (struct vpfe_device*) ;
 int vpfe_schedule_next_buffer (struct vpfe_device*) ;

__attribute__((used)) static irqreturn_t vpfe_isr(int irq, void *dev_id)
{
 struct vpfe_device *vpfe_dev = dev_id;
 enum v4l2_field field;
 unsigned long addr;
 int fid;

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "\nStarting vpfe_isr...\n");
 field = vpfe_dev->fmt.fmt.pix.field;


 if (!vpfe_dev->started)
  return IRQ_HANDLED;


 if (((void*)0) != ccdc_dev->hw_ops.reset)
  ccdc_dev->hw_ops.reset();

 if (field == V4L2_FIELD_NONE) {

  v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev,
   "frame format is progressive...\n");
  if (vpfe_dev->cur_frm != vpfe_dev->next_frm)
   vpfe_process_buffer_complete(vpfe_dev);
  return IRQ_HANDLED;
 }


 fid = ccdc_dev->hw_ops.getfid();


 vpfe_dev->field_id ^= 1;
 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "field id = %x:%x.\n",
  fid, vpfe_dev->field_id);
 if (fid == vpfe_dev->field_id) {

  if (fid == 0) {




   if (vpfe_dev->cur_frm != vpfe_dev->next_frm)
    vpfe_process_buffer_complete(vpfe_dev);





   if (field == V4L2_FIELD_SEQ_TB) {
    addr =
      videobuf_to_dma_contig(vpfe_dev->cur_frm);
    addr += vpfe_dev->field_off;
    ccdc_dev->hw_ops.setfbaddr(addr);
   }
   return IRQ_HANDLED;
  }






  spin_lock(&vpfe_dev->dma_queue_lock);
  if (!list_empty(&vpfe_dev->dma_queue) &&
      vpfe_dev->cur_frm == vpfe_dev->next_frm)
   vpfe_schedule_next_buffer(vpfe_dev);
  spin_unlock(&vpfe_dev->dma_queue_lock);
 } else if (fid == 0) {




  vpfe_dev->field_id = fid;
 }
 return IRQ_HANDLED;
}
