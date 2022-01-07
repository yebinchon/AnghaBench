
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct beiscsi_hba {int dummy; } ;
struct be_mcc_wrb {int dummy; } ;


 int BEISCSI_LOG_CONFIG ;
 int BEISCSI_LOG_MBOX ;
 int EBUSY ;
 int KERN_ERR ;
 unsigned int be_cmd_set_vlan (struct beiscsi_hba*,int ) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int,char*) ;
 int beiscsi_mccq_compl (struct beiscsi_hba*,unsigned int,struct be_mcc_wrb**,int *) ;

int mgmt_set_vlan(struct beiscsi_hba *phba,
     uint16_t vlan_tag)
{
 int rc;
 unsigned int tag;
 struct be_mcc_wrb *wrb = ((void*)0);

 tag = be_cmd_set_vlan(phba, vlan_tag);
 if (!tag) {
  beiscsi_log(phba, KERN_ERR,
       (BEISCSI_LOG_CONFIG | BEISCSI_LOG_MBOX),
       "BG_%d : VLAN Setting Failed\n");
  return -EBUSY;
 }

 rc = beiscsi_mccq_compl(phba, tag, &wrb, ((void*)0));
 if (rc) {
  beiscsi_log(phba, KERN_ERR,
       (BEISCSI_LOG_CONFIG | BEISCSI_LOG_MBOX),
       "BS_%d : VLAN MBX Cmd Failed\n");
  return rc;
 }
 return rc;
}
