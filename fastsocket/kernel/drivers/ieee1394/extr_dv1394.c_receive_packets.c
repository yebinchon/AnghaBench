
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ kvirt; } ;
struct video_card {int n_frames; int spinlock; TYPE_4__ packet_buf; struct frame** frames; } ;
struct packet {int dummy; } ;
struct frame {int descriptor_pool_dma; int frame_num; void** frame_end_branch; struct DMA_descriptor_block* descriptor_pool; } ;
struct TYPE_7__ {void** q; } ;
struct TYPE_5__ {TYPE_3__ il; } ;
struct TYPE_6__ {TYPE_1__ in; } ;
struct DMA_descriptor_block {TYPE_2__ u; } ;
typedef int dma_addr_t ;
typedef void* __le32 ;


 int MAX_PACKETS ;
 void* cpu_to_le32 (int) ;
 int dma_region_offset_to_bus (TYPE_4__*,unsigned long) ;
 int fill_input_last (TYPE_3__*,int,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void receive_packets(struct video_card *video)
{
 struct DMA_descriptor_block *block = ((void*)0);
 dma_addr_t block_dma = 0;
 struct packet *data = ((void*)0);
 dma_addr_t data_dma = 0;
 __le32 *last_branch_address = ((void*)0);
 unsigned long irq_flags;
 int want_interrupt = 0;
 struct frame *f = ((void*)0);
 int i, j;

 spin_lock_irqsave(&video->spinlock, irq_flags);

 for (j = 0; j < video->n_frames; j++) {


  if (j > 0 && f != ((void*)0) && f->frame_end_branch != ((void*)0))
   *(f->frame_end_branch) = cpu_to_le32(video->frames[j]->descriptor_pool_dma | 1);

  f = video->frames[j];

  for (i = 0; i < MAX_PACKETS; i++) {

   block = &(f->descriptor_pool[i]);
   block_dma = ((unsigned long) block - (unsigned long) f->descriptor_pool) + f->descriptor_pool_dma;

   data = ((struct packet*)video->packet_buf.kvirt) + f->frame_num * MAX_PACKETS + i;
   data_dma = dma_region_offset_to_bus( &video->packet_buf,
            ((unsigned long) data - (unsigned long) video->packet_buf.kvirt) );


   want_interrupt = ((i % (MAX_PACKETS/2)) == 0 || i == (MAX_PACKETS-1));
   fill_input_last( &(block->u.in.il), want_interrupt, 512, data_dma);


   last_branch_address = f->frame_end_branch;

   if (last_branch_address != ((void*)0))
    *(last_branch_address) = cpu_to_le32(block_dma | 1);

   f->frame_end_branch = &(block->u.in.il.q[2]);
  }

 }

 spin_unlock_irqrestore(&video->spinlock, irq_flags);

}
