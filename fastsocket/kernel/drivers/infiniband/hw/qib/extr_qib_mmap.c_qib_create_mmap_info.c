
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qib_mmap_info {scalar_t__ offset; scalar_t__ size; int ref; void* obj; struct ib_ucontext* context; int pending_mmaps; } ;
struct qib_ibdev {scalar_t__ mmap_offset; int mmap_offset_lock; } ;
struct ib_ucontext {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ PAGE_ALIGN (scalar_t__) ;
 scalar_t__ PAGE_SIZE ;
 struct qib_mmap_info* kmalloc (int,int ) ;
 int kref_init (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

struct qib_mmap_info *qib_create_mmap_info(struct qib_ibdev *dev,
        u32 size,
        struct ib_ucontext *context,
        void *obj) {
 struct qib_mmap_info *ip;

 ip = kmalloc(sizeof *ip, GFP_KERNEL);
 if (!ip)
  goto bail;

 size = PAGE_ALIGN(size);

 spin_lock_irq(&dev->mmap_offset_lock);
 if (dev->mmap_offset == 0)
  dev->mmap_offset = PAGE_SIZE;
 ip->offset = dev->mmap_offset;
 dev->mmap_offset += size;
 spin_unlock_irq(&dev->mmap_offset_lock);

 INIT_LIST_HEAD(&ip->pending_mmaps);
 ip->size = size;
 ip->context = context;
 ip->obj = obj;
 kref_init(&ip->ref);

bail:
 return ip;
}
