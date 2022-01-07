
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_vm {int id; int pd_gpu_addr; } ;
struct radeon_ring {int dummy; } ;
struct radeon_device {struct radeon_ring* ring; } ;


 scalar_t__ HDP_MEM_COHERENCY_FLUSH_CNTL ;
 int PACKET0 (scalar_t__,int ) ;
 int PACKET3 (int ,int ) ;
 int PACKET3_PFP_SYNC_ME ;
 scalar_t__ VM_CONTEXT0_PAGE_TABLE_BASE_ADDR ;
 scalar_t__ VM_INVALIDATE_REQUEST ;
 int radeon_ring_write (struct radeon_ring*,int) ;

void cayman_vm_flush(struct radeon_device *rdev, int ridx, struct radeon_vm *vm)
{
 struct radeon_ring *ring = &rdev->ring[ridx];

 if (vm == ((void*)0))
  return;

 radeon_ring_write(ring, PACKET0(VM_CONTEXT0_PAGE_TABLE_BASE_ADDR + (vm->id << 2), 0));
 radeon_ring_write(ring, vm->pd_gpu_addr >> 12);


 radeon_ring_write(ring, PACKET0(HDP_MEM_COHERENCY_FLUSH_CNTL, 0));
 radeon_ring_write(ring, 0x1);


 radeon_ring_write(ring, PACKET0(VM_INVALIDATE_REQUEST, 0));
 radeon_ring_write(ring, 1 << vm->id);


 radeon_ring_write(ring, PACKET3(PACKET3_PFP_SYNC_ME, 0));
 radeon_ring_write(ring, 0x0);
}
