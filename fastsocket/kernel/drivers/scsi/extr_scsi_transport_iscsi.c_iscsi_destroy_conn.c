
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_cls_conn {int dev; int conn_list; } ;


 int ISCSI_DBG_TRANS_CONN (struct iscsi_cls_conn*,char*) ;
 int connlock ;
 int device_unregister (int *) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int transport_unregister_device (int *) ;

int iscsi_destroy_conn(struct iscsi_cls_conn *conn)
{
 unsigned long flags;

 spin_lock_irqsave(&connlock, flags);
 list_del(&conn->conn_list);
 spin_unlock_irqrestore(&connlock, flags);

 transport_unregister_device(&conn->dev);
 ISCSI_DBG_TRANS_CONN(conn, "Completing conn destruction\n");
 device_unregister(&conn->dev);
 return 0;
}
