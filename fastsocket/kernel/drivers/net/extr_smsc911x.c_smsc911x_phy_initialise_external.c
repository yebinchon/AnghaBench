
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct smsc911x_data {int using_extphy; TYPE_1__ config; } ;


 int HW ;
 int HW_CFG ;
 unsigned int HW_CFG_EXT_PHY_DET_ ;
 int SMSC911X_FORCE_EXTERNAL_PHY ;
 int SMSC911X_FORCE_INTERNAL_PHY ;
 int SMSC_TRACE (int ,char*) ;
 int smsc911x_phy_enable_external (struct smsc911x_data*) ;
 unsigned int smsc911x_reg_read (struct smsc911x_data*,int ) ;

__attribute__((used)) static void smsc911x_phy_initialise_external(struct smsc911x_data *pdata)
{
 unsigned int hwcfg = smsc911x_reg_read(pdata, HW_CFG);

 if (pdata->config.flags & SMSC911X_FORCE_INTERNAL_PHY) {
  SMSC_TRACE(HW, "Forcing internal PHY");
  pdata->using_extphy = 0;
 } else if (pdata->config.flags & SMSC911X_FORCE_EXTERNAL_PHY) {
  SMSC_TRACE(HW, "Forcing external PHY");
  smsc911x_phy_enable_external(pdata);
  pdata->using_extphy = 1;
 } else if (hwcfg & HW_CFG_EXT_PHY_DET_) {
  SMSC_TRACE(HW, "HW_CFG EXT_PHY_DET set, using external PHY");
  smsc911x_phy_enable_external(pdata);
  pdata->using_extphy = 1;
 } else {
  SMSC_TRACE(HW, "HW_CFG EXT_PHY_DET clear, using internal PHY");
  pdata->using_extphy = 0;
 }
}
