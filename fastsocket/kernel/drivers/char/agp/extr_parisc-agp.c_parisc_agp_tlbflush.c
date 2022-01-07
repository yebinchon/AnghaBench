
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_memory {int dummy; } ;
struct _parisc_agp_info {int gart_base; scalar_t__ ioc_regs; int gart_size; } ;


 scalar_t__ IOC_PCOM ;
 int ilog2 (int ) ;
 struct _parisc_agp_info parisc_agp_info ;
 int readq (scalar_t__) ;
 int writeq (int,scalar_t__) ;

__attribute__((used)) static void
parisc_agp_tlbflush(struct agp_memory *mem)
{
 struct _parisc_agp_info *info = &parisc_agp_info;

 writeq(info->gart_base | ilog2(info->gart_size), info->ioc_regs+IOC_PCOM);
 readq(info->ioc_regs+IOC_PCOM);
}
