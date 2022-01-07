
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_lynx {int dummy; } ;
typedef int pcl_t ;


 scalar_t__ DMA0_CHAN_CTRL ;
 scalar_t__ DMA0_CURRENT_PCL ;
 int DMA_CHAN_CTRL_ENABLE ;
 int DMA_CHAN_CTRL_LINK ;
 int pcl_bus (struct ti_lynx const*,int ) ;
 int reg_write (struct ti_lynx const*,scalar_t__,int) ;

__attribute__((used)) static inline void run_sub_pcl(const struct ti_lynx *lynx, pcl_t pclid, int idx,
                               int dmachan)
{
        reg_write(lynx, DMA0_CURRENT_PCL + dmachan * 0x20,
                  pcl_bus(lynx, pclid) + idx * 4);
        reg_write(lynx, DMA0_CHAN_CTRL + dmachan * 0x20,
                  DMA_CHAN_CTRL_ENABLE | DMA_CHAN_CTRL_LINK);
}
