
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nents; int sgl; } ;
struct scsi_data_buffer {TYPE_2__ table; } ;
struct iscsi_tcp_task {int data_offset; } ;
struct TYPE_9__ {scalar_t__ datalen; int segment; } ;
struct iscsi_tcp_conn {TYPE_4__ in; struct hash_desc* rx_hash; } ;
struct iscsi_task {void* last_xfer; TYPE_5__* sc; struct iscsi_tcp_task* dd_data; } ;
struct iscsi_hdr {int hlength; int opcode; int itt; int dlength; } ;
struct iscsi_conn {TYPE_3__* session; int datadgst_en; scalar_t__ max_recv_dlength; struct iscsi_tcp_conn* dd_data; } ;
struct hash_desc {int dummy; } ;
struct TYPE_10__ {int sc_data_direction; } ;
struct TYPE_8__ {int lock; TYPE_1__* tt; } ;
struct TYPE_6__ {int caps; } ;


 int CAP_DIGEST_OFFLOAD ;
 int DMA_TO_DEVICE ;
 int ISCSI_DBG_TCP (struct iscsi_conn*,char*,int,int,...) ;
 scalar_t__ ISCSI_DEF_MAX_RECV_SEG_LEN ;
 int ISCSI_ERR_AHSLEN ;
 int ISCSI_ERR_BAD_ITT ;
 int ISCSI_ERR_BAD_OPCODE ;
 int ISCSI_ERR_DATALEN ;
 int ISCSI_ERR_PROTO ;
 int ISCSI_OPCODE_MASK ;
 int KERN_ERR ;
 int __iscsi_complete_pdu (struct iscsi_conn*,struct iscsi_hdr*,int *,int ) ;
 int iscsi_complete_pdu (struct iscsi_conn*,struct iscsi_hdr*,int *,int ) ;
 int iscsi_conn_printk (int ,struct iscsi_conn*,char*,scalar_t__,scalar_t__,...) ;
 struct iscsi_task* iscsi_itt_to_ctask (struct iscsi_conn*,int ) ;
 int iscsi_segment_seek_sg (int *,int ,int ,int ,scalar_t__,int ,struct hash_desc*) ;
 int iscsi_tcp_data_in (struct iscsi_conn*,struct iscsi_task*) ;
 int iscsi_tcp_data_recv_prep (struct iscsi_tcp_conn*) ;
 int iscsi_tcp_hdr_recv_prep (struct iscsi_tcp_conn*) ;
 int iscsi_tcp_process_data_in ;
 int iscsi_tcp_r2t_rsp (struct iscsi_conn*,struct iscsi_task*) ;
 int iscsi_verify_itt (struct iscsi_conn*,int ) ;
 void* jiffies ;
 scalar_t__ ntoh24 (int ) ;
 struct scsi_data_buffer* scsi_in (TYPE_5__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
iscsi_tcp_hdr_dissect(struct iscsi_conn *conn, struct iscsi_hdr *hdr)
{
 int rc = 0, opcode, ahslen;
 struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
 struct iscsi_task *task;


 tcp_conn->in.datalen = ntoh24(hdr->dlength);
 if (tcp_conn->in.datalen > conn->max_recv_dlength) {
  iscsi_conn_printk(KERN_ERR, conn,
      "iscsi_tcp: datalen %d > %d\n",
      tcp_conn->in.datalen, conn->max_recv_dlength);
  return ISCSI_ERR_DATALEN;
 }




 ahslen = hdr->hlength << 2;

 opcode = hdr->opcode & ISCSI_OPCODE_MASK;

 rc = iscsi_verify_itt(conn, hdr->itt);
 if (rc)
  return rc;

 ISCSI_DBG_TCP(conn, "opcode 0x%x ahslen %d datalen %d\n",
        opcode, ahslen, tcp_conn->in.datalen);

 switch(opcode) {
 case 130:
  spin_lock(&conn->session->lock);
  task = iscsi_itt_to_ctask(conn, hdr->itt);
  if (!task)
   rc = ISCSI_ERR_BAD_ITT;
  else
   rc = iscsi_tcp_data_in(conn, task);
  if (rc) {
   spin_unlock(&conn->session->lock);
   break;
  }

  if (tcp_conn->in.datalen) {
   struct iscsi_tcp_task *tcp_task = task->dd_data;
   struct hash_desc *rx_hash = ((void*)0);
   struct scsi_data_buffer *sdb = scsi_in(task->sc);
   if (conn->datadgst_en &&
       !(conn->session->tt->caps & CAP_DIGEST_OFFLOAD))
    rx_hash = tcp_conn->rx_hash;

   ISCSI_DBG_TCP(conn, "iscsi_tcp_begin_data_in( "
         "offset=%d, datalen=%d)\n",
          tcp_task->data_offset,
          tcp_conn->in.datalen);
   task->last_xfer = jiffies;
   rc = iscsi_segment_seek_sg(&tcp_conn->in.segment,
         sdb->table.sgl,
         sdb->table.nents,
         tcp_task->data_offset,
         tcp_conn->in.datalen,
         iscsi_tcp_process_data_in,
         rx_hash);
   spin_unlock(&conn->session->lock);
   return rc;
  }
  rc = __iscsi_complete_pdu(conn, hdr, ((void*)0), 0);
  spin_unlock(&conn->session->lock);
  break;
 case 131:
  if (tcp_conn->in.datalen) {
   iscsi_tcp_data_recv_prep(tcp_conn);
   return 0;
  }
  rc = iscsi_complete_pdu(conn, hdr, ((void*)0), 0);
  break;
 case 133:
  spin_lock(&conn->session->lock);
  task = iscsi_itt_to_ctask(conn, hdr->itt);
  if (!task)
   rc = ISCSI_ERR_BAD_ITT;
  else if (ahslen)
   rc = ISCSI_ERR_AHSLEN;
  else if (task->sc->sc_data_direction == DMA_TO_DEVICE) {
   task->last_xfer = jiffies;
   rc = iscsi_tcp_r2t_rsp(conn, task);
  } else
   rc = ISCSI_ERR_PROTO;
  spin_unlock(&conn->session->lock);
  break;
 case 136:
 case 128:
 case 132:
 case 137:





  if (ISCSI_DEF_MAX_RECV_SEG_LEN < tcp_conn->in.datalen) {
   iscsi_conn_printk(KERN_ERR, conn,
       "iscsi_tcp: received buffer of "
       "len %u but conn buffer is only %u "
       "(opcode %0x)\n",
       tcp_conn->in.datalen,
       ISCSI_DEF_MAX_RECV_SEG_LEN, opcode);
   rc = ISCSI_ERR_PROTO;
   break;
  }




  if (tcp_conn->in.datalen) {
   iscsi_tcp_data_recv_prep(tcp_conn);
   return 0;
  }

 case 135:
 case 134:
 case 129:
  rc = iscsi_complete_pdu(conn, hdr, ((void*)0), 0);
  break;
 default:
  rc = ISCSI_ERR_BAD_OPCODE;
  break;
 }

 if (rc == 0) {


  if (tcp_conn->in.datalen)
   return ISCSI_ERR_PROTO;
  iscsi_tcp_hdr_recv_prep(tcp_conn);
 }

 return rc;
}
