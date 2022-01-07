
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct radeon_vm {int mutex; int fence; } ;
struct radeon_fpriv {struct radeon_vm vm; } ;
struct TYPE_9__ {int lock; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ vm_manager; } ;
struct TYPE_10__ {int is_const_ib; int length_dw; int fence; int ptr; } ;
struct radeon_cs_parser {int chunk_ib_idx; int cs_flags; int chunk_const_ib_idx; TYPE_3__ ib; TYPE_3__ const_ib; int ring; struct radeon_cs_chunk* chunks; TYPE_1__* filp; } ;
struct radeon_cs_chunk {int length_dw; int user_ptr; } ;
struct TYPE_8__ {struct radeon_fpriv* driver_priv; } ;


 scalar_t__ CHIP_TAHITI ;
 scalar_t__ DRM_COPY_FROM_USER (int ,int ,int) ;
 int DRM_ERROR (char*,...) ;
 int EFAULT ;
 int EINVAL ;
 int RADEON_CS_USE_VM ;
 int RADEON_IB_VM_MAX_SIZE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_bo_vm_update_pte (struct radeon_cs_parser*,struct radeon_vm*) ;
 int radeon_cs_sync_rings (struct radeon_cs_parser*) ;
 int radeon_ib_get (struct radeon_device*,int ,TYPE_3__*,struct radeon_vm*,int) ;
 int radeon_ib_schedule (struct radeon_device*,TYPE_3__*,TYPE_3__*) ;
 int radeon_ib_sync_to (TYPE_3__*,int ) ;
 int radeon_ring_ib_parse (struct radeon_device*,int ,TYPE_3__*) ;
 int radeon_vm_add_to_lru (struct radeon_device*,struct radeon_vm*) ;
 int radeon_vm_alloc_pt (struct radeon_device*,struct radeon_vm*) ;
 int radeon_vm_fence (struct radeon_device*,struct radeon_vm*,int ) ;
 int radeon_vm_grab_id (struct radeon_device*,struct radeon_vm*,int ) ;

__attribute__((used)) static int radeon_cs_ib_vm_chunk(struct radeon_device *rdev,
     struct radeon_cs_parser *parser)
{
 struct radeon_cs_chunk *ib_chunk;
 struct radeon_fpriv *fpriv = parser->filp->driver_priv;
 struct radeon_vm *vm = &fpriv->vm;
 int r;

 if (parser->chunk_ib_idx == -1)
  return 0;
 if ((parser->cs_flags & RADEON_CS_USE_VM) == 0)
  return 0;

 if ((rdev->family >= CHIP_TAHITI) &&
     (parser->chunk_const_ib_idx != -1)) {
  ib_chunk = &parser->chunks[parser->chunk_const_ib_idx];
  if (ib_chunk->length_dw > RADEON_IB_VM_MAX_SIZE) {
   DRM_ERROR("cs IB CONST too big: %d\n", ib_chunk->length_dw);
   return -EINVAL;
  }
  r = radeon_ib_get(rdev, parser->ring, &parser->const_ib,
       vm, ib_chunk->length_dw * 4);
  if (r) {
   DRM_ERROR("Failed to get const ib !\n");
   return r;
  }
  parser->const_ib.is_const_ib = 1;
  parser->const_ib.length_dw = ib_chunk->length_dw;

  if (DRM_COPY_FROM_USER(parser->const_ib.ptr, ib_chunk->user_ptr,
           ib_chunk->length_dw * 4)) {
   return -EFAULT;
  }
  r = radeon_ring_ib_parse(rdev, parser->ring, &parser->const_ib);
  if (r) {
   return r;
  }
 }

 ib_chunk = &parser->chunks[parser->chunk_ib_idx];
 if (ib_chunk->length_dw > RADEON_IB_VM_MAX_SIZE) {
  DRM_ERROR("cs IB too big: %d\n", ib_chunk->length_dw);
  return -EINVAL;
 }
 r = radeon_ib_get(rdev, parser->ring, &parser->ib,
      vm, ib_chunk->length_dw * 4);
 if (r) {
  DRM_ERROR("Failed to get ib !\n");
  return r;
 }
 parser->ib.length_dw = ib_chunk->length_dw;

 if (DRM_COPY_FROM_USER(parser->ib.ptr, ib_chunk->user_ptr,
          ib_chunk->length_dw * 4)) {
  return -EFAULT;
 }
 r = radeon_ring_ib_parse(rdev, parser->ring, &parser->ib);
 if (r) {
  return r;
 }

 mutex_lock(&rdev->vm_manager.lock);
 mutex_lock(&vm->mutex);
 r = radeon_vm_alloc_pt(rdev, vm);
 if (r) {
  goto out;
 }
 r = radeon_bo_vm_update_pte(parser, vm);
 if (r) {
  goto out;
 }
 radeon_cs_sync_rings(parser);
 radeon_ib_sync_to(&parser->ib, vm->fence);
 radeon_ib_sync_to(&parser->ib, radeon_vm_grab_id(
  rdev, vm, parser->ring));

 if ((rdev->family >= CHIP_TAHITI) &&
     (parser->chunk_const_ib_idx != -1)) {
  r = radeon_ib_schedule(rdev, &parser->ib, &parser->const_ib);
 } else {
  r = radeon_ib_schedule(rdev, &parser->ib, ((void*)0));
 }

 if (!r) {
  radeon_vm_fence(rdev, vm, parser->ib.fence);
 }

out:
 radeon_vm_add_to_lru(rdev, vm);
 mutex_unlock(&vm->mutex);
 mutex_unlock(&rdev->vm_manager.lock);
 return r;
}
