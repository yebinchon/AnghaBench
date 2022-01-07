
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct beiscsi_hba {int dummy; } ;
struct beiscsi_endpoint {int ep_cid; struct beiscsi_hba* phba; } ;


 int BEISCSI_LOG_CONFIG ;
 int EAGAIN ;
 int KERN_INFO ;
 int beiscsi_log (struct beiscsi_hba*,int ,int ,char*,int ) ;
 int beiscsi_mccq_compl (struct beiscsi_hba*,unsigned int,int *,int *) ;
 unsigned int mgmt_upload_connection (struct beiscsi_hba*,int ,int) ;

__attribute__((used)) static int beiscsi_close_conn(struct beiscsi_endpoint *beiscsi_ep, int flag)
{
 int ret = 0;
 unsigned int tag;
 struct beiscsi_hba *phba = beiscsi_ep->phba;

 tag = mgmt_upload_connection(phba, beiscsi_ep->ep_cid, flag);
 if (!tag) {
  beiscsi_log(phba, KERN_INFO, BEISCSI_LOG_CONFIG,
       "BS_%d : upload failed for cid 0x%x\n",
       beiscsi_ep->ep_cid);

  ret = -EAGAIN;
 }

 ret = beiscsi_mccq_compl(phba, tag, ((void*)0), ((void*)0));
 return ret;
}
