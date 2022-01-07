
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint64_t ;
struct TYPE_2__ {size_t* pages_addr; } ;
struct radeon_device {TYPE_1__ gart; } ;


 size_t PAGE_MASK ;
 size_t PAGE_SHIFT ;

uint64_t radeon_vm_map_gart(struct radeon_device *rdev, uint64_t addr)
{
 uint64_t result;


 result = rdev->gart.pages_addr[addr >> PAGE_SHIFT];


 result |= addr & (~PAGE_MASK);

 return result;
}
