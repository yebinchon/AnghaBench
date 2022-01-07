
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_pcl {int dummy; } ;
struct ti_lynx {struct ti_pcl* pcl_mem; } ;
typedef int pcltmp_t ;
typedef int pcl_t ;



__attribute__((used)) static inline struct ti_pcl *edit_pcl(const struct ti_lynx *lynx, pcl_t pclid,
                                      pcltmp_t *tmp)
{
        return lynx->pcl_mem + pclid * sizeof(struct ti_pcl);
}
