
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mvs_info {int dummy; } ;
struct mvs_device {scalar_t__ runing_req; scalar_t__ taskfileset; } ;
struct TYPE_2__ {int (* free_reg_set ) (struct mvs_info*,scalar_t__*) ;} ;


 TYPE_1__* MVS_CHIP_DISP ;
 scalar_t__ MVS_ID_NOT_MAPPED ;
 int mv_printk (char*) ;
 int stub1 (struct mvs_info*,scalar_t__*) ;

__attribute__((used)) static inline void mvs_free_reg_set(struct mvs_info *mvi,
    struct mvs_device *dev)
{
 if (!dev) {
  mv_printk("device has been free.\n");
  return;
 }
 if (dev->runing_req != 0)
  return;
 if (dev->taskfileset == MVS_ID_NOT_MAPPED)
  return;
 MVS_CHIP_DISP->free_reg_set(mvi, &dev->taskfileset);
}
