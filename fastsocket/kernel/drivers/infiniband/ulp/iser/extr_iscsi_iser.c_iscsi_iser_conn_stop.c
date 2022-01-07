
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iser_conn {int dummy; } ;
struct iscsi_iser_conn {struct iser_conn* ib_conn; } ;
struct iscsi_conn {struct iscsi_iser_conn* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;


 int iscsi_conn_stop (struct iscsi_cls_conn*,int) ;
 int iser_conn_put (struct iser_conn*,int) ;

__attribute__((used)) static void
iscsi_iser_conn_stop(struct iscsi_cls_conn *cls_conn, int flag)
{
 struct iscsi_conn *conn = cls_conn->dd_data;
 struct iscsi_iser_conn *iser_conn = conn->dd_data;
 struct iser_conn *ib_conn = iser_conn->ib_conn;





 if (ib_conn) {
  iscsi_conn_stop(cls_conn, flag);




  iser_conn_put(ib_conn, 1);
 }
 iser_conn->ib_conn = ((void*)0);
}
