
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {int vm_end; int vm_start; struct videobuf_mapping* vm_private_data; } ;
struct videobuf_queue {TYPE_2__** bufs; TYPE_1__* ops; } ;
struct videobuf_mapping {scalar_t__ count; struct videobuf_queue* q; } ;
struct videobuf_dma_sg_memory {int magic; } ;
struct TYPE_4__ {scalar_t__ baddr; struct videobuf_mapping* map; struct videobuf_dma_sg_memory* priv; } ;
struct TYPE_3__ {int (* buf_release ) (struct videobuf_queue*,TYPE_2__*) ;} ;


 int MAGIC_CHECK (int ,int ) ;
 int MAGIC_SG_MEM ;
 int VIDEO_MAX_FRAME ;
 int dprintk (int,char*,struct videobuf_mapping*,struct videobuf_queue*,...) ;
 int kfree (struct videobuf_mapping*) ;
 int stub1 (struct videobuf_queue*,TYPE_2__*) ;
 int videobuf_queue_lock (struct videobuf_queue*) ;
 int videobuf_queue_unlock (struct videobuf_queue*) ;

__attribute__((used)) static void videobuf_vm_close(struct vm_area_struct *vma)
{
 struct videobuf_mapping *map = vma->vm_private_data;
 struct videobuf_queue *q = map->q;
 struct videobuf_dma_sg_memory *mem;
 int i;

 dprintk(2, "vm_close %p [count=%d,vma=%08lx-%08lx]\n", map,
  map->count, vma->vm_start, vma->vm_end);

 map->count--;
 if (0 == map->count) {
  dprintk(1, "munmap %p q=%p\n", map, q);
  videobuf_queue_lock(q);
  for (i = 0; i < VIDEO_MAX_FRAME; i++) {
   if (((void*)0) == q->bufs[i])
    continue;
   mem = q->bufs[i]->priv;
   if (!mem)
    continue;

   MAGIC_CHECK(mem->magic, MAGIC_SG_MEM);

   if (q->bufs[i]->map != map)
    continue;
   q->bufs[i]->map = ((void*)0);
   q->bufs[i]->baddr = 0;
   q->ops->buf_release(q, q->bufs[i]);
  }
  videobuf_queue_unlock(q);
  kfree(map);
 }
 return;
}
