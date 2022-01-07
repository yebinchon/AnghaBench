
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ti_pcl {int dummy; } ;
struct ti_lynx {scalar_t__ pcl_mem_dma; } ;
typedef int pcl_t ;



__attribute__((used)) static inline u32 pcl_bus(const struct ti_lynx *lynx, pcl_t pclid)
{
        return lynx->pcl_mem_dma + pclid * sizeof(struct ti_pcl);
}
