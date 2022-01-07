
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_storage {int dummy; } ;
struct iser_conn {TYPE_3__* cma_id; } ;
struct iscsi_endpoint {struct iser_conn* dd_data; } ;
typedef enum iscsi_param { ____Placeholder_iscsi_param } iscsi_param ;
struct TYPE_4__ {int dst_addr; } ;
struct TYPE_5__ {TYPE_1__ addr; } ;
struct TYPE_6__ {TYPE_2__ route; } ;


 int ENOSYS ;
 int ENOTCONN ;


 int iscsi_conn_get_addr_param (struct sockaddr_storage*,int,char*) ;

__attribute__((used)) static int iscsi_iser_get_ep_param(struct iscsi_endpoint *ep,
       enum iscsi_param param, char *buf)
{
 struct iser_conn *ib_conn = ep->dd_data;
 int len;

 switch (param) {
 case 128:
 case 129:
  if (!ib_conn || !ib_conn->cma_id)
   return -ENOTCONN;

  return iscsi_conn_get_addr_param((struct sockaddr_storage *)
     &ib_conn->cma_id->route.addr.dst_addr,
     param, buf);
  break;
 default:
  return -ENOSYS;
 }

 return len;
}
