
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_conn {int dummy; } ;


 int iscsi_conn_teardown (struct iscsi_cls_conn*) ;

void iscsi_tcp_conn_teardown(struct iscsi_cls_conn *cls_conn)
{
 iscsi_conn_teardown(cls_conn);
}
