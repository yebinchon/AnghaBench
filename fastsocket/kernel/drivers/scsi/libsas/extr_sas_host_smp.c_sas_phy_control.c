
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct sas_phy_linkrates {int minimum_linkrate; int maximum_linkrate; } ;
struct sas_internal {TYPE_3__* dft; } ;
struct TYPE_5__ {TYPE_1__* shost; } ;
struct sas_ha_struct {size_t num_phys; struct asd_sas_phy** sas_phy; TYPE_2__ core; } ;
struct asd_sas_phy {int dummy; } ;
typedef enum sas_linkrate { ____Placeholder_sas_linkrate } sas_linkrate ;
struct TYPE_6__ {scalar_t__ (* lldd_control_phy ) (struct asd_sas_phy*,size_t,struct sas_phy_linkrates*) ;} ;
struct TYPE_4__ {int transportt; } ;
 size_t SMP_RESP_FUNC_ACC ;
 size_t SMP_RESP_FUNC_FAILED ;
 size_t SMP_RESP_NO_PHY ;
 size_t SMP_RESP_PHY_UNK_OP ;
 scalar_t__ sas_try_ata_reset (struct asd_sas_phy*) ;
 scalar_t__ stub1 (struct asd_sas_phy*,size_t,struct sas_phy_linkrates*) ;
 struct sas_internal* to_sas_internal (int ) ;

__attribute__((used)) static void sas_phy_control(struct sas_ha_struct *sas_ha, u8 phy_id,
       u8 phy_op, enum sas_linkrate min,
       enum sas_linkrate max, u8 *resp_data)
{
 struct sas_internal *i =
  to_sas_internal(sas_ha->core.shost->transportt);
 struct sas_phy_linkrates rates;
 struct asd_sas_phy *asd_phy;

 if (phy_id >= sas_ha->num_phys) {
  resp_data[2] = SMP_RESP_NO_PHY;
  return;
 }

 asd_phy = sas_ha->sas_phy[phy_id];
 switch (phy_op) {
 case 129:
 case 130:
 case 131:
 case 132:
 case 133:
 case 134:
 case 128:
  break;

 default:
  resp_data[2] = SMP_RESP_PHY_UNK_OP;
  return;
 }

 rates.minimum_linkrate = min;
 rates.maximum_linkrate = max;


 if (phy_op == 130 && sas_try_ata_reset(asd_phy) == 0) {
  resp_data[2] = SMP_RESP_FUNC_ACC;
  return;
 }

 if (i->dft->lldd_control_phy(asd_phy, phy_op, &rates))
  resp_data[2] = SMP_RESP_FUNC_FAILED;
 else
  resp_data[2] = SMP_RESP_FUNC_ACC;
}
