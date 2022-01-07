
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct titan_agp_aperture {scalar_t__ pg_start; int arena; } ;
struct agp_memory {int pages; int page_count; } ;
typedef scalar_t__ off_t ;
struct TYPE_4__ {struct titan_agp_aperture* sysdata; } ;
struct TYPE_5__ {TYPE_1__ aperture; } ;
typedef TYPE_2__ alpha_agp_info ;


 int iommu_bind (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static int
titan_agp_bind_memory(alpha_agp_info *agp, off_t pg_start, struct agp_memory *mem)
{
 struct titan_agp_aperture *aper = agp->aperture.sysdata;
 return iommu_bind(aper->arena, aper->pg_start + pg_start,
     mem->page_count, mem->pages);
}
