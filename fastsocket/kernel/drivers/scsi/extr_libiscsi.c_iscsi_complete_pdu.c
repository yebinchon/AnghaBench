
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iscsi_hdr {int dummy; } ;
struct iscsi_conn {TYPE_1__* session; } ;
struct TYPE_2__ {int lock; } ;


 int __iscsi_complete_pdu (struct iscsi_conn*,struct iscsi_hdr*,char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int iscsi_complete_pdu(struct iscsi_conn *conn, struct iscsi_hdr *hdr,
         char *data, int datalen)
{
 int rc;

 spin_lock(&conn->session->lock);
 rc = __iscsi_complete_pdu(conn, hdr, data, datalen);
 spin_unlock(&conn->session->lock);
 return rc;
}
