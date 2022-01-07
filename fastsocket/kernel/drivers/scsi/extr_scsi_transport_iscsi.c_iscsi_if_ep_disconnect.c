
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct iscsi_transport {int (* ep_disconnect ) (struct iscsi_endpoint*) ;} ;
struct iscsi_endpoint {struct iscsi_cls_conn* conn; } ;
struct iscsi_cls_conn {int ep_mutex; int * ep; } ;


 int EINVAL ;
 struct iscsi_endpoint* iscsi_lookup_endpoint (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct iscsi_endpoint*) ;

__attribute__((used)) static int iscsi_if_ep_disconnect(struct iscsi_transport *transport,
      u64 ep_handle)
{
 struct iscsi_cls_conn *conn;
 struct iscsi_endpoint *ep;

 if (!transport->ep_disconnect)
  return -EINVAL;

 ep = iscsi_lookup_endpoint(ep_handle);
 if (!ep)
  return -EINVAL;
 conn = ep->conn;
 if (conn) {
  mutex_lock(&conn->ep_mutex);
  conn->ep = ((void*)0);
  mutex_unlock(&conn->ep_mutex);
 }

 transport->ep_disconnect(ep);
 return 0;
}
