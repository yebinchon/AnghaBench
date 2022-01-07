
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int SenderSize; void* XferState; } ;
struct hw_fib {TYPE_2__ header; scalar_t__ data; } ;
struct fib {int hw_fib_pa; struct fib* next; int event_lock; int event_wait; struct hw_fib* hw_fib_va; void* data; struct aac_dev* dev; scalar_t__ flags; } ;
struct aac_fib_xporthdr {int dummy; } ;
struct aac_dev {int hw_fib_pa; int max_fib_size; struct fib* fibs; struct fib* free_fib; TYPE_3__* scsi_host_ptr; struct hw_fib* hw_fib_va; TYPE_1__* init; } ;
typedef int dma_addr_t ;
struct TYPE_6__ {int can_queue; } ;
struct TYPE_4__ {void* MaxIoCommands; } ;


 int AAC_NUM_MGT_FIB ;
 int ALIGN32 ;
 int ENOMEM ;
 int cpu_to_le16 (int) ;
 void* cpu_to_le32 (int) ;
 int fib_map_alloc (struct aac_dev*) ;
 int init_MUTEX_LOCKED (int *) ;
 int le32_to_cpu (void*) ;
 int memset (struct hw_fib*,int ,int) ;
 int spin_lock_init (int *) ;

int aac_fib_setup(struct aac_dev * dev)
{
 struct fib *fibptr;
 struct hw_fib *hw_fib;
 dma_addr_t hw_fib_pa;
 int i;

 while (((i = fib_map_alloc(dev)) == -ENOMEM)
  && (dev->scsi_host_ptr->can_queue > (64 - AAC_NUM_MGT_FIB))) {
  dev->init->MaxIoCommands = cpu_to_le32((dev->scsi_host_ptr->can_queue + AAC_NUM_MGT_FIB) >> 1);
  dev->scsi_host_ptr->can_queue = le32_to_cpu(dev->init->MaxIoCommands) - AAC_NUM_MGT_FIB;
 }
 if (i<0)
  return -ENOMEM;


 hw_fib_pa = (dev->hw_fib_pa + (ALIGN32 - 1)) & ~(ALIGN32 - 1);
 dev->hw_fib_va = (struct hw_fib *)((unsigned char *)dev->hw_fib_va +
  (hw_fib_pa - dev->hw_fib_pa));
 dev->hw_fib_pa = hw_fib_pa;
 memset(dev->hw_fib_va, 0,
  (dev->max_fib_size + sizeof(struct aac_fib_xporthdr)) *
  (dev->scsi_host_ptr->can_queue + AAC_NUM_MGT_FIB));

 dev->hw_fib_va = (struct hw_fib *)((unsigned char *)dev->hw_fib_va +
  sizeof(struct aac_fib_xporthdr));
 dev->hw_fib_pa += sizeof(struct aac_fib_xporthdr);

 hw_fib = dev->hw_fib_va;
 hw_fib_pa = dev->hw_fib_pa;



 for (i = 0, fibptr = &dev->fibs[i];
  i < (dev->scsi_host_ptr->can_queue + AAC_NUM_MGT_FIB);
  i++, fibptr++)
 {
  fibptr->flags = 0;
  fibptr->dev = dev;
  fibptr->hw_fib_va = hw_fib;
  fibptr->data = (void *) fibptr->hw_fib_va->data;
  fibptr->next = fibptr+1;
  init_MUTEX_LOCKED(&fibptr->event_wait);
  spin_lock_init(&fibptr->event_lock);
  hw_fib->header.XferState = cpu_to_le32(0xffffffff);
  hw_fib->header.SenderSize = cpu_to_le16(dev->max_fib_size);
  fibptr->hw_fib_pa = hw_fib_pa;
  hw_fib = (struct hw_fib *)((unsigned char *)hw_fib +
   dev->max_fib_size + sizeof(struct aac_fib_xporthdr));
  hw_fib_pa = hw_fib_pa +
   dev->max_fib_size + sizeof(struct aac_fib_xporthdr);
 }



 dev->fibs[dev->scsi_host_ptr->can_queue + AAC_NUM_MGT_FIB - 1].next = ((void*)0);



 dev->free_fib = &dev->fibs[0];
 return 0;
}
