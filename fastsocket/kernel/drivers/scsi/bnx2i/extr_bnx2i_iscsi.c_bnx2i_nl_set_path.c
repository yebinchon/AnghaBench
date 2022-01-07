
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct iscsi_path {int dummy; } ;
struct bnx2i_hba {TYPE_1__* cnic; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int (* iscsi_nl_msg_recv ) (TYPE_1__*,int ,char*,int) ;} ;


 int ISCSI_UEVENT_PATH_UPDATE ;
 struct bnx2i_hba* iscsi_host_priv (struct Scsi_Host*) ;
 int stub1 (TYPE_1__*,int ,char*,int) ;

__attribute__((used)) static int bnx2i_nl_set_path(struct Scsi_Host *shost, struct iscsi_path *params)
{
 struct bnx2i_hba *hba = iscsi_host_priv(shost);
 char *buf = (char *) params;
 u16 len = sizeof(*params);


 hba->cnic->iscsi_nl_msg_recv(hba->cnic, ISCSI_UEVENT_PATH_UPDATE, buf,
         len);

 return 0;
}
