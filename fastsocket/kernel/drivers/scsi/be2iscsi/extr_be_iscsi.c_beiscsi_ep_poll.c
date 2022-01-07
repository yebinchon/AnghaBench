
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_endpoint {struct beiscsi_endpoint* dd_data; } ;
struct beiscsi_endpoint {int cid_vld; int phba; } ;


 int BEISCSI_LOG_CONFIG ;
 int KERN_INFO ;
 int beiscsi_log (int ,int ,int ,char*) ;

int beiscsi_ep_poll(struct iscsi_endpoint *ep, int timeout_ms)
{
 struct beiscsi_endpoint *beiscsi_ep = ep->dd_data;

 beiscsi_log(beiscsi_ep->phba, KERN_INFO, BEISCSI_LOG_CONFIG,
      "BS_%d : In  beiscsi_ep_poll\n");

 if (beiscsi_ep->cid_vld == 1)
  return 1;
 else
  return 0;
}
