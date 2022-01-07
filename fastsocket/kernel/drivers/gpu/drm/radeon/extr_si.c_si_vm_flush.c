
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_vm {int id; int pd_gpu_addr; } ;
struct radeon_ring {int dummy; } ;
struct radeon_device {struct radeon_ring* ring; } ;


 int HDP_MEM_COHERENCY_FLUSH_CNTL ;
 int PACKET3 (int ,int) ;
 int PACKET3_PFP_SYNC_ME ;
 int PACKET3_WRITE_DATA ;
 int VM_CONTEXT0_PAGE_TABLE_BASE_ADDR ;
 int VM_CONTEXT8_PAGE_TABLE_BASE_ADDR ;
 int VM_INVALIDATE_REQUEST ;
 int WRITE_DATA_DST_SEL (int ) ;
 int WRITE_DATA_ENGINE_SEL (int ) ;
 int radeon_ring_write (struct radeon_ring*,int) ;

void si_vm_flush(struct radeon_device *rdev, int ridx, struct radeon_vm *vm)
{
 struct radeon_ring *ring = &rdev->ring[ridx];

 if (vm == ((void*)0))
  return;


 radeon_ring_write(ring, PACKET3(PACKET3_WRITE_DATA, 3));
 radeon_ring_write(ring, (WRITE_DATA_ENGINE_SEL(0) |
     WRITE_DATA_DST_SEL(0)));

 if (vm->id < 8) {
  radeon_ring_write(ring,
      (VM_CONTEXT0_PAGE_TABLE_BASE_ADDR + (vm->id << 2)) >> 2);
 } else {
  radeon_ring_write(ring,
      (VM_CONTEXT8_PAGE_TABLE_BASE_ADDR + ((vm->id - 8) << 2)) >> 2);
 }
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, vm->pd_gpu_addr >> 12);


 radeon_ring_write(ring, PACKET3(PACKET3_WRITE_DATA, 3));
 radeon_ring_write(ring, (WRITE_DATA_ENGINE_SEL(0) |
     WRITE_DATA_DST_SEL(0)));
 radeon_ring_write(ring, HDP_MEM_COHERENCY_FLUSH_CNTL >> 2);
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, 0x1);


 radeon_ring_write(ring, PACKET3(PACKET3_WRITE_DATA, 3));
 radeon_ring_write(ring, (WRITE_DATA_ENGINE_SEL(0) |
     WRITE_DATA_DST_SEL(0)));
 radeon_ring_write(ring, VM_INVALIDATE_REQUEST >> 2);
 radeon_ring_write(ring, 0);
 radeon_ring_write(ring, 1 << vm->id);


 radeon_ring_write(ring, PACKET3(PACKET3_PFP_SYNC_ME, 0));
 radeon_ring_write(ring, 0x0);
}
