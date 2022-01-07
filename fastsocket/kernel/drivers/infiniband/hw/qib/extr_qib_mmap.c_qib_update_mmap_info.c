
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qib_mmap_info {scalar_t__ offset; scalar_t__ size; void* obj; } ;
struct qib_ibdev {scalar_t__ mmap_offset; int mmap_offset_lock; } ;


 scalar_t__ PAGE_ALIGN (scalar_t__) ;
 scalar_t__ PAGE_SIZE ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void qib_update_mmap_info(struct qib_ibdev *dev, struct qib_mmap_info *ip,
     u32 size, void *obj)
{
 size = PAGE_ALIGN(size);

 spin_lock_irq(&dev->mmap_offset_lock);
 if (dev->mmap_offset == 0)
  dev->mmap_offset = PAGE_SIZE;
 ip->offset = dev->mmap_offset;
 dev->mmap_offset += size;
 spin_unlock_irq(&dev->mmap_offset_lock);

 ip->size = size;
 ip->obj = obj;
}
