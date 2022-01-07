
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct radeon_ring {int wptr; int ring_size; unsigned int ptr_mask; int * ring; int * next_rptr_cpu_addr; scalar_t__ rptr_save_reg; int idx; int * ring_obj; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct radeon_device {int ring_lock; TYPE_1__ wb; } ;


 int GFP_KERNEL ;
 unsigned int RREG32 (scalar_t__) ;
 int * kmalloc_array (unsigned int,int,int ) ;
 unsigned int le32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_fence_count_emitted (struct radeon_device*,int ) ;

unsigned radeon_ring_backup(struct radeon_device *rdev, struct radeon_ring *ring,
       uint32_t **data)
{
 unsigned size, ptr, i;


 mutex_lock(&rdev->ring_lock);
 *data = ((void*)0);

 if (ring->ring_obj == ((void*)0)) {
  mutex_unlock(&rdev->ring_lock);
  return 0;
 }


 if (!radeon_fence_count_emitted(rdev, ring->idx)) {
  mutex_unlock(&rdev->ring_lock);
  return 0;
 }


 if (ring->rptr_save_reg)
  ptr = RREG32(ring->rptr_save_reg);
 else if (rdev->wb.enabled)
  ptr = le32_to_cpu(*ring->next_rptr_cpu_addr);
 else {

  mutex_unlock(&rdev->ring_lock);
  return 0;
 }

 size = ring->wptr + (ring->ring_size / 4);
 size -= ptr;
 size &= ring->ptr_mask;
 if (size == 0) {
  mutex_unlock(&rdev->ring_lock);
  return 0;
 }


 *data = kmalloc_array(size, sizeof(uint32_t), GFP_KERNEL);
 if (!*data) {
  mutex_unlock(&rdev->ring_lock);
  return 0;
 }
 for (i = 0; i < size; ++i) {
  (*data)[i] = ring->ring[ptr++];
  ptr &= ring->ptr_mask;
 }

 mutex_unlock(&rdev->ring_lock);
 return size;
}
