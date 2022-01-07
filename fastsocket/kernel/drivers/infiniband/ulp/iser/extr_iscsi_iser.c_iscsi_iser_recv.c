
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iscsi_hdr {int hlength; int dlength; } ;
struct iscsi_conn {int dummy; } ;


 int ISCSI_ERR_DATALEN ;
 int ISCSI_ERR_NO_SCSI_CMD ;
 int iscsi_complete_pdu (struct iscsi_conn*,struct iscsi_hdr*,char*,int) ;
 int iscsi_conn_failure (struct iscsi_conn*,int) ;
 int iser_dbg (char*,int,int) ;
 int iser_err (char*,int,int) ;
 int ntoh24 (int ) ;

void
iscsi_iser_recv(struct iscsi_conn *conn,
  struct iscsi_hdr *hdr, char *rx_data, int rx_data_len)
{
 int rc = 0;
 int datalen;
 int ahslen;


 datalen = ntoh24(hdr->dlength);
 if (datalen > rx_data_len || (datalen + 4) < rx_data_len) {
  iser_err("wrong datalen %d (hdr), %d (IB)\n",
   datalen, rx_data_len);
  rc = ISCSI_ERR_DATALEN;
  goto error;
 }

 if (datalen != rx_data_len)
  iser_dbg("aligned datalen (%d) hdr, %d (IB)\n",
   datalen, rx_data_len);


 ahslen = hdr->hlength * 4;

 rc = iscsi_complete_pdu(conn, hdr, rx_data, rx_data_len);
 if (rc && rc != ISCSI_ERR_NO_SCSI_CMD)
  goto error;

 return;
error:
 iscsi_conn_failure(conn, rc);
}
