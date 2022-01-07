
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ti_pcl {int dummy; } ;
struct ti_lynx {scalar_t__ pcl_mem; } ;
typedef int pcl_t ;


 int memcpy_le32 (int *,int *,int) ;

__attribute__((used)) static inline void put_pcl(const struct ti_lynx *lynx, pcl_t pclid,
                           const struct ti_pcl *pcl)
{
        memcpy_le32((u32 *)(lynx->pcl_mem + pclid * sizeof(struct ti_pcl)),
                    (u32 *)pcl, sizeof(struct ti_pcl));
}
