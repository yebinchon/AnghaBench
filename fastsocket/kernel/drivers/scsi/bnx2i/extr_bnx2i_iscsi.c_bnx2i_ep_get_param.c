
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_endpoint {struct bnx2i_endpoint* dd_data; } ;
struct bnx2i_hba {int net_dev_lock; } ;
struct bnx2i_endpoint {TYPE_1__* cm_sk; struct bnx2i_hba* hba; } ;
typedef enum iscsi_param { ____Placeholder_iscsi_param } iscsi_param ;
struct TYPE_2__ {int dst_ip; int * dst_port; } ;


 int ENOSYS ;
 int ENOTCONN ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sprintf (char*,char*,int *) ;

__attribute__((used)) static int bnx2i_ep_get_param(struct iscsi_endpoint *ep,
         enum iscsi_param param, char *buf)
{
 struct bnx2i_endpoint *bnx2i_ep = ep->dd_data;
 struct bnx2i_hba *hba = bnx2i_ep->hba;
 int len = -ENOTCONN;

 if (!hba)
  return -ENOTCONN;

 switch (param) {
 case 128:
  mutex_lock(&hba->net_dev_lock);
  if (bnx2i_ep->cm_sk)
   len = sprintf(buf, "%hu\n", bnx2i_ep->cm_sk->dst_port);
  mutex_unlock(&hba->net_dev_lock);
  break;
 case 129:
  mutex_lock(&hba->net_dev_lock);
  if (bnx2i_ep->cm_sk)
   len = sprintf(buf, "%pI4\n", &bnx2i_ep->cm_sk->dst_ip);
  mutex_unlock(&hba->net_dev_lock);
  break;
 default:
  return -ENOSYS;
 }

 return len;
}
