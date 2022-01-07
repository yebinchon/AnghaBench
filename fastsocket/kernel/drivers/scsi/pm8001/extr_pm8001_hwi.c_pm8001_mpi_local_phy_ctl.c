
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pm8001_hba_info {int dummy; } ;
struct local_phy_ctl_resp {int phyop_phyid; int status; } ;


 scalar_t__ ID_BITS ;
 scalar_t__ OP_BITS ;
 int PM8001_MSG_DBG (struct pm8001_hba_info*,int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int pm8001_printk (char*,scalar_t__,scalar_t__) ;

int pm8001_mpi_local_phy_ctl(struct pm8001_hba_info *pm8001_ha, void *piomb)
{
 struct local_phy_ctl_resp *pPayload =
  (struct local_phy_ctl_resp *)(piomb + 4);
 u32 status = le32_to_cpu(pPayload->status);
 u32 phy_id = le32_to_cpu(pPayload->phyop_phyid) & ID_BITS;
 u32 phy_op = le32_to_cpu(pPayload->phyop_phyid) & OP_BITS;
 if (status != 0) {
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("%x phy execute %x phy op failed!\n",
   phy_id, phy_op));
 } else
  PM8001_MSG_DBG(pm8001_ha,
   pm8001_printk("%x phy execute %x phy op success!\n",
   phy_id, phy_op));
 return 0;
}
