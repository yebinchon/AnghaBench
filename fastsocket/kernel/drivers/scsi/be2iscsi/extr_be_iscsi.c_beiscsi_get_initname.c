
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int dummy; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_hba_name {char* initiator_name; } ;


 int BEISCSI_LOG_CONFIG ;
 int BEISCSI_LOG_MBOX ;
 int EBUSY ;
 int KERN_ERR ;
 unsigned int be_cmd_get_initname (struct beiscsi_hba*) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int,char*) ;
 int beiscsi_mccq_compl (struct beiscsi_hba*,unsigned int,struct be_mcc_wrb**,int *) ;
 struct be_cmd_hba_name* embedded_payload (struct be_mcc_wrb*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static int beiscsi_get_initname(char *buf, struct beiscsi_hba *phba)
{
 int rc;
 unsigned int tag;
 struct be_mcc_wrb *wrb;
 struct be_cmd_hba_name *resp;

 tag = be_cmd_get_initname(phba);
 if (!tag) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
       "BS_%d : Getting Initiator Name Failed\n");

  return -EBUSY;
 }

 rc = beiscsi_mccq_compl(phba, tag, &wrb, ((void*)0));
 if (rc) {
  beiscsi_log(phba, KERN_ERR,
       BEISCSI_LOG_CONFIG | BEISCSI_LOG_MBOX,
       "BS_%d : Initiator Name MBX Failed\n");
  return rc;
 }

 resp = embedded_payload(wrb);
 rc = sprintf(buf, "%s\n", resp->initiator_name);
 return rc;
}
