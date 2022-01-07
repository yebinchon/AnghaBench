
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {unsigned int ring_size; int ptr_mask; scalar_t__ rptr; } ;
struct radeon_device {TYPE_1__ ih; } ;


 int drm_order (unsigned int) ;

void r600_ih_ring_init(struct radeon_device *rdev, unsigned ring_size)
{
 u32 rb_bufsz;


 rb_bufsz = drm_order(ring_size / 4);
 ring_size = (1 << rb_bufsz) * 4;
 rdev->ih.ring_size = ring_size;
 rdev->ih.ptr_mask = rdev->ih.ring_size - 1;
 rdev->ih.rptr = 0;
}
