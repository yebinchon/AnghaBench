
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_lynx {int dummy; } ;
typedef int pcl_t ;


 int run_sub_pcl (struct ti_lynx const*,int ,int ,int) ;

__attribute__((used)) static inline void run_pcl(const struct ti_lynx *lynx, pcl_t pclid, int dmachan)
{
        run_sub_pcl(lynx, pclid, 0, dmachan);
}
