
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct iser_conn {struct iscsi_endpoint* ep; } ;
struct iscsi_endpoint {struct iser_conn* dd_data; } ;
struct Scsi_Host {int dummy; } ;


 int ENOMEM ;
 struct iscsi_endpoint* ERR_PTR (int) ;
 struct iscsi_endpoint* iscsi_create_endpoint (int) ;
 int iser_conn_init (struct iser_conn*) ;
 int iser_connect (struct iser_conn*,int *,struct sockaddr_in*,int) ;

__attribute__((used)) static struct iscsi_endpoint *
iscsi_iser_ep_connect(struct Scsi_Host *shost, struct sockaddr *dst_addr,
        int non_blocking)
{
 int err;
 struct iser_conn *ib_conn;
 struct iscsi_endpoint *ep;

 ep = iscsi_create_endpoint(sizeof(*ib_conn));
 if (!ep)
  return ERR_PTR(-ENOMEM);

 ib_conn = ep->dd_data;
 ib_conn->ep = ep;
 iser_conn_init(ib_conn);

 err = iser_connect(ib_conn, ((void*)0), (struct sockaddr_in *)dst_addr,
      non_blocking);
 if (err)
  return ERR_PTR(err);

 return ep;
}
