
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_host {int port_speed; } ;
struct beiscsi_hba {int dummy; } ;
struct be_mcc_wrb {int dummy; } ;
struct be_cmd_ntwk_link_status_resp {int mac_speed; } ;
struct Scsi_Host {struct iscsi_cls_host* shost_data; } ;






 int BEISCSI_LOG_CONFIG ;
 int BEISCSI_LOG_MBOX ;
 int EBUSY ;
 int ISCSI_PORT_SPEED_10GBPS ;
 int ISCSI_PORT_SPEED_10MBPS ;
 int ISCSI_PORT_SPEED_1GBPS ;
 int ISCSI_PORT_SPEED_UNKNOWN ;
 int KERN_ERR ;
 unsigned int be_cmd_get_port_speed (struct beiscsi_hba*) ;
 int beiscsi_log (struct beiscsi_hba*,int ,int,char*) ;
 int beiscsi_mccq_compl (struct beiscsi_hba*,unsigned int,struct be_mcc_wrb**,int *) ;
 struct be_cmd_ntwk_link_status_resp* embedded_payload (struct be_mcc_wrb*) ;
 struct beiscsi_hba* iscsi_host_priv (struct Scsi_Host*) ;

__attribute__((used)) static int beiscsi_get_port_speed(struct Scsi_Host *shost)
{
 int rc;
 unsigned int tag;
 struct be_mcc_wrb *wrb;
 struct be_cmd_ntwk_link_status_resp *resp;
 struct beiscsi_hba *phba = iscsi_host_priv(shost);
 struct iscsi_cls_host *ihost = shost->shost_data;

 tag = be_cmd_get_port_speed(phba);
 if (!tag) {
  beiscsi_log(phba, KERN_ERR, BEISCSI_LOG_CONFIG,
       "BS_%d : Getting Port Speed Failed\n");

   return -EBUSY;
 }
 rc = beiscsi_mccq_compl(phba, tag, &wrb, ((void*)0));
 if (rc) {
  beiscsi_log(phba, KERN_ERR,
       BEISCSI_LOG_CONFIG | BEISCSI_LOG_MBOX,
       "BS_%d : Port Speed MBX Failed\n");
  return rc;
 }
 resp = embedded_payload(wrb);

 switch (resp->mac_speed) {
 case 129:
  ihost->port_speed = ISCSI_PORT_SPEED_10MBPS;
  break;
 case 131:
  ihost->port_speed = 131;
  break;
 case 128:
  ihost->port_speed = ISCSI_PORT_SPEED_1GBPS;
  break;
 case 130:
  ihost->port_speed = ISCSI_PORT_SPEED_10GBPS;
  break;
 default:
  ihost->port_speed = ISCSI_PORT_SPEED_UNKNOWN;
 }
 return 0;
}
