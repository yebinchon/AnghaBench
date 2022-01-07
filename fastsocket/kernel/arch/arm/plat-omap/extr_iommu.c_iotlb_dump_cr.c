
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iommu {int dummy; } ;
struct cr_regs {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* dump_cr ) (struct iommu*,struct cr_regs*,char*) ;} ;


 int BUG_ON (int) ;
 TYPE_1__* arch_iommu ;
 int stub1 (struct iommu*,struct cr_regs*,char*) ;

__attribute__((used)) static inline ssize_t iotlb_dump_cr(struct iommu *obj, struct cr_regs *cr,
        char *buf)
{
 BUG_ON(!cr || !buf);

 return arch_iommu->dump_cr(obj, cr, buf);
}
