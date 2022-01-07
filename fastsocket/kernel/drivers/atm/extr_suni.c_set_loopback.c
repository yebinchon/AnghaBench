
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct atm_dev {TYPE_1__* ops; } ;
struct TYPE_4__ {scalar_t__ type; int loop_mode; } ;
struct TYPE_3__ {int (* phy_get ) (struct atm_dev*,int) ;int (* phy_put ) (struct atm_dev*,unsigned char,int) ;} ;





 int EINVAL ;
 TYPE_2__* PRIV (struct atm_dev*) ;
 int SUNI_MCM ;
 int SUNI_MCM_DLE ;
 int SUNI_MCM_LLE ;
 int SUNI_MCT ;
 int SUNI_MCT_DLE ;
 int SUNI_MCT_LLE ;
 scalar_t__ SUNI_MRI_TYPE_PM5355 ;
 int stub1 (struct atm_dev*,int) ;
 int stub2 (struct atm_dev*,unsigned char,int) ;

__attribute__((used)) static int set_loopback(struct atm_dev *dev,int mode)
{
 unsigned char control;
 int reg, dle, lle;

 if (PRIV(dev)->type == SUNI_MRI_TYPE_PM5355) {
  reg = SUNI_MCM;
  dle = SUNI_MCM_DLE;
  lle = SUNI_MCM_LLE;
 } else {
  reg = SUNI_MCT;
  dle = SUNI_MCT_DLE;
  lle = SUNI_MCT_LLE;
 }

 control = dev->ops->phy_get(dev, reg) & ~(dle | lle);
 switch (mode) {
  case 129:
   break;
  case 130:
   control |= dle;
   break;
  case 128:
   control |= lle;
   break;
  default:
   return -EINVAL;
 }
  dev->ops->phy_put(dev, control, reg);
 PRIV(dev)->loop_mode = mode;
 return 0;
}
