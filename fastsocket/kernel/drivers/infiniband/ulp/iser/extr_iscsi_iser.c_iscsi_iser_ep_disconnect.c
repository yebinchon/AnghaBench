
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iser_conn {int state; TYPE_1__* iser_conn; } ;
struct iscsi_endpoint {struct iser_conn* dd_data; } ;
struct TYPE_2__ {int iscsi_conn; } ;


 int iscsi_suspend_tx (int ) ;
 int iser_conn_terminate (struct iser_conn*) ;
 int iser_info (char*,struct iser_conn*,int ) ;

__attribute__((used)) static void
iscsi_iser_ep_disconnect(struct iscsi_endpoint *ep)
{
 struct iser_conn *ib_conn;

 ib_conn = ep->dd_data;
 if (ib_conn->iser_conn)







  iscsi_suspend_tx(ib_conn->iser_conn->iscsi_conn);


 iser_info("ib conn %p state %d\n", ib_conn, ib_conn->state);
 iser_conn_terminate(ib_conn);
}
