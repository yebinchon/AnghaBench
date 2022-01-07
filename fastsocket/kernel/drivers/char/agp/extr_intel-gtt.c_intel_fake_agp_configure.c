
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int gart_bus_addr; } ;
struct TYPE_3__ {int clear_fake_agp; int gma_bus_addr; } ;


 int EIO ;
 TYPE_2__* agp_bridge ;
 int intel_enable_gtt () ;
 TYPE_1__ intel_private ;

__attribute__((used)) static int intel_fake_agp_configure(void)
{
 if (!intel_enable_gtt())
     return -EIO;

 intel_private.clear_fake_agp = 1;
 agp_bridge->gart_bus_addr = intel_private.gma_bus_addr;

 return 0;
}
