
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct mvs_info {int dummy; } ;
struct mvs_device {scalar_t__ taskfileset; } ;
struct TYPE_2__ {int (* assign_reg_set ) (struct mvs_info*,scalar_t__*) ;} ;


 TYPE_1__* MVS_CHIP_DISP ;
 scalar_t__ MVS_ID_NOT_MAPPED ;
 int stub1 (struct mvs_info*,scalar_t__*) ;

__attribute__((used)) static inline u8 mvs_assign_reg_set(struct mvs_info *mvi,
    struct mvs_device *dev)
{
 if (dev->taskfileset != MVS_ID_NOT_MAPPED)
  return 0;
 return MVS_CHIP_DISP->assign_reg_set(mvi, &dev->taskfileset);
}
