
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_conn {int suspend_tx; } ;


 int ISCSI_SUSPEND_BIT ;
 int clear_bit (int ,int *) ;
 int iscsi_conn_queue_work (struct iscsi_conn*) ;

__attribute__((used)) static void iscsi_start_tx(struct iscsi_conn *conn)
{
 clear_bit(ISCSI_SUSPEND_BIT, &conn->suspend_tx);
 iscsi_conn_queue_work(conn);
}
