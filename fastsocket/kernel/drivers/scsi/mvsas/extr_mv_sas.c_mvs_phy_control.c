
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct sas_ha_struct {scalar_t__ lldd_ha; struct asd_sas_phy** sas_phy; } ;
struct mvs_prv_info {size_t n_phy; struct mvs_info** mvi; } ;
struct mvs_info {int dummy; } ;
struct asd_sas_phy {int id; struct sas_ha_struct* ha; } ;
typedef enum phy_func { ____Placeholder_phy_func } phy_func ;
struct TYPE_2__ {size_t (* read_phy_ctl ) (struct mvs_info*,int) ;int (* phy_disable ) (struct mvs_info*,int) ;int (* phy_reset ) (struct mvs_info*,int,int) ;int (* phy_enable ) (struct mvs_info*,int) ;int (* phy_set_link_rate ) (struct mvs_info*,int,void*) ;} ;


 int ENOSYS ;
 TYPE_1__* MVS_CHIP_DISP ;





 size_t PHY_RST_HARD ;
 int msleep (int) ;
 int stub1 (struct mvs_info*,int,void*) ;
 size_t stub2 (struct mvs_info*,int) ;
 int stub3 (struct mvs_info*,int,int) ;
 int stub4 (struct mvs_info*,int) ;
 int stub5 (struct mvs_info*,int,int) ;
 int stub6 (struct mvs_info*,int) ;

int mvs_phy_control(struct asd_sas_phy *sas_phy, enum phy_func func,
   void *funcdata)
{
 int rc = 0, phy_id = sas_phy->id;
 u32 tmp, i = 0, hi;
 struct sas_ha_struct *sha = sas_phy->ha;
 struct mvs_info *mvi = ((void*)0);

 while (sha->sas_phy[i]) {
  if (sha->sas_phy[i] == sas_phy)
   break;
  i++;
 }
 hi = i/((struct mvs_prv_info *)sha->lldd_ha)->n_phy;
 mvi = ((struct mvs_prv_info *)sha->lldd_ha)->mvi[hi];

 switch (func) {
 case 128:
  MVS_CHIP_DISP->phy_set_link_rate(mvi, phy_id, funcdata);
  break;

 case 131:
  tmp = MVS_CHIP_DISP->read_phy_ctl(mvi, phy_id);
  if (tmp & PHY_RST_HARD)
   break;
  MVS_CHIP_DISP->phy_reset(mvi, phy_id, 1);
  break;

 case 130:
  MVS_CHIP_DISP->phy_enable(mvi, phy_id);
  MVS_CHIP_DISP->phy_reset(mvi, phy_id, 0);
  break;

 case 132:
  MVS_CHIP_DISP->phy_disable(mvi, phy_id);
  break;
 case 129:
 default:
  rc = -ENOSYS;
 }
 msleep(200);
 return rc;
}
