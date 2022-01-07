
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int u32 ;
struct TYPE_2__ {int* ptr; int num_gpu_pages; } ;
struct radeon_device {TYPE_1__ gart; } ;


 int EINVAL ;
 int PAGE_MASK ;
 int RS400_PTE_READABLE ;
 int RS400_PTE_WRITEABLE ;
 int cpu_to_le32 (int) ;
 int lower_32_bits (int ) ;
 int upper_32_bits (int ) ;

int rs400_gart_set_page(struct radeon_device *rdev, int i, uint64_t addr)
{
 uint32_t entry;
 u32 *gtt = rdev->gart.ptr;

 if (i < 0 || i > rdev->gart.num_gpu_pages) {
  return -EINVAL;
 }

 entry = (lower_32_bits(addr) & PAGE_MASK) |
  ((upper_32_bits(addr) & 0xff) << 4) |
  RS400_PTE_WRITEABLE | RS400_PTE_READABLE;
 entry = cpu_to_le32(entry);
 gtt[i] = entry;
 return 0;
}
