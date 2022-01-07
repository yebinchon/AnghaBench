
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b3dfg_dev {int frame_size; int triplets_dropped_lock; int cstate_lock; int buffer_lock; int buffer_waitqueue; int buffer_queue; struct b3dfg_buffer* buffers; } ;
struct b3dfg_buffer {int list; int * frame; } ;


 int B3DFG_FRAMES_PER_BUFFER ;
 int B3D_REG_FRM_SIZE ;
 int B3D_REG_HW_CTRL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int b3dfg_nbuf ;
 int b3dfg_read32 (struct b3dfg_dev*,int ) ;
 int b3dfg_write32 (struct b3dfg_dev*,int ,int ) ;
 int free_all_frame_buffers (struct b3dfg_dev*) ;
 int init_waitqueue_head (int *) ;
 int kmalloc (int,int ) ;
 struct b3dfg_buffer* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int b3dfg_init_dev(struct b3dfg_dev *fgdev)
{
 int i, j;
 u32 frm_size = b3dfg_read32(fgdev, B3D_REG_FRM_SIZE);
 b3dfg_write32(fgdev, B3D_REG_HW_CTRL, 0);

 fgdev->frame_size = frm_size * 4096;
 fgdev->buffers = kzalloc(sizeof(struct b3dfg_buffer) * b3dfg_nbuf,
     GFP_KERNEL);
 if (!fgdev->buffers)
  goto err_no_buf;
 for (i = 0; i < b3dfg_nbuf; i++) {
  struct b3dfg_buffer *buf = &fgdev->buffers[i];
  for (j = 0; j < B3DFG_FRAMES_PER_BUFFER; j++) {
   buf->frame[j] = kmalloc(fgdev->frame_size, GFP_KERNEL);
   if (!buf->frame[j])
    goto err_no_mem;
  }
  INIT_LIST_HEAD(&buf->list);
 }

 INIT_LIST_HEAD(&fgdev->buffer_queue);
 init_waitqueue_head(&fgdev->buffer_waitqueue);
 spin_lock_init(&fgdev->buffer_lock);
 spin_lock_init(&fgdev->cstate_lock);
 spin_lock_init(&fgdev->triplets_dropped_lock);
 return 0;

err_no_mem:
 free_all_frame_buffers(fgdev);
err_no_buf:
 return -ENOMEM;
}
