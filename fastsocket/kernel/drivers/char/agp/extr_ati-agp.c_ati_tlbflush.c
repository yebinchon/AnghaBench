
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct agp_memory {int dummy; } ;
struct TYPE_2__ {scalar_t__ registers; } ;


 scalar_t__ ATI_GART_CACHE_CNTRL ;
 TYPE_1__ ati_generic_private ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void ati_tlbflush(struct agp_memory * mem)
{
 writel(1, ati_generic_private.registers+ATI_GART_CACHE_CNTRL);
 readl(ati_generic_private.registers+ATI_GART_CACHE_CNTRL);
}
