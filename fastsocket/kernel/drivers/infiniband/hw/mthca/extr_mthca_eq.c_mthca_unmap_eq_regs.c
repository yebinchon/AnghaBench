
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int ecr_base; } ;
struct TYPE_4__ {int eq_arm; int eq_set_ci_base; } ;
struct TYPE_6__ {TYPE_2__ tavor; TYPE_1__ arbel; } ;
struct mthca_dev {int clr_base; TYPE_3__ eq_regs; } ;


 int iounmap (int ) ;
 scalar_t__ mthca_is_memfree (struct mthca_dev*) ;

__attribute__((used)) static void mthca_unmap_eq_regs(struct mthca_dev *dev)
{
 if (mthca_is_memfree(dev)) {
  iounmap(dev->eq_regs.arbel.eq_set_ci_base);
  iounmap(dev->eq_regs.arbel.eq_arm);
  iounmap(dev->clr_base);
 } else {
  iounmap(dev->eq_regs.tavor.ecr_base);
  iounmap(dev->clr_base);
 }
}
