
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u32 ;
struct TYPE_2__ {int num_gpu_pages; int * ptr; } ;
struct radeon_device {TYPE_1__ gart; } ;


 int EINVAL ;
 int cpu_to_le32 (int ) ;
 int lower_32_bits (int ) ;

int r100_pci_gart_set_page(struct radeon_device *rdev, int i, uint64_t addr)
{
 u32 *gtt = rdev->gart.ptr;

 if (i < 0 || i > rdev->gart.num_gpu_pages) {
  return -EINVAL;
 }
 gtt[i] = cpu_to_le32(lower_32_bits(addr));
 return 0;
}
