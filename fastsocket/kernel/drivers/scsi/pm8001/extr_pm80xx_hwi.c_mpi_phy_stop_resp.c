
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct pm8001_phy {scalar_t__ phy_state; } ;
struct pm8001_hba_info {struct pm8001_phy* phy; } ;
struct phy_stop_resp {int phyid; int status; } ;


 int PM8001_MSG_DBG (struct pm8001_hba_info*,int ) ;
 size_t le32_to_cpu (int ) ;
 int pm8001_printk (char*,size_t,size_t) ;

__attribute__((used)) static int mpi_phy_stop_resp(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
 struct phy_stop_resp *pPayload =
  (struct phy_stop_resp *)(piomb + 4);
 u32 status =
  le32_to_cpu(pPayload->status);
 u32 phyid =
  le32_to_cpu(pPayload->phyid);
 struct pm8001_phy *phy = &pm8001_ha->phy[phyid];
 PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("phy:0x%x status:0x%x\n",
     phyid, status));
 if (status == 0)
  phy->phy_state = 0;
 return 0;
}
