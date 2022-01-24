#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct scsi_data_buffer {TYPE_2__ table; } ;
struct iscsi_tcp_task {int /*<<< orphan*/  data_offset; } ;
struct TYPE_9__ {scalar_t__ datalen; int /*<<< orphan*/  segment; } ;
struct iscsi_tcp_conn {TYPE_4__ in; struct hash_desc* rx_hash; } ;
struct iscsi_task {void* last_xfer; TYPE_5__* sc; struct iscsi_tcp_task* dd_data; } ;
struct iscsi_hdr {int hlength; int opcode; int /*<<< orphan*/  itt; int /*<<< orphan*/  dlength; } ;
struct iscsi_conn {TYPE_3__* session; int /*<<< orphan*/  datadgst_en; scalar_t__ max_recv_dlength; struct iscsi_tcp_conn* dd_data; } ;
struct hash_desc {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  sc_data_direction; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; TYPE_1__* tt; } ;
struct TYPE_6__ {int caps; } ;

/* Variables and functions */
 int CAP_DIGEST_OFFLOAD ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct iscsi_conn*,char*,int,int,...) ; 
 scalar_t__ ISCSI_DEF_MAX_RECV_SEG_LEN ; 
 int ISCSI_ERR_AHSLEN ; 
 int ISCSI_ERR_BAD_ITT ; 
 int ISCSI_ERR_BAD_OPCODE ; 
 int ISCSI_ERR_DATALEN ; 
 int ISCSI_ERR_PROTO ; 
 int ISCSI_OPCODE_MASK ; 
#define  ISCSI_OP_ASYNC_EVENT 137 
#define  ISCSI_OP_LOGIN_RSP 136 
#define  ISCSI_OP_LOGOUT_RSP 135 
#define  ISCSI_OP_NOOP_IN 134 
#define  ISCSI_OP_R2T 133 
#define  ISCSI_OP_REJECT 132 
#define  ISCSI_OP_SCSI_CMD_RSP 131 
#define  ISCSI_OP_SCSI_DATA_IN 130 
#define  ISCSI_OP_SCSI_TMFUNC_RSP 129 
#define  ISCSI_OP_TEXT_RSP 128 
 int /*<<< orphan*/  KERN_ERR ; 
 int FUNC1 (struct iscsi_conn*,struct iscsi_hdr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct iscsi_conn*,struct iscsi_hdr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct iscsi_conn*,char*,scalar_t__,scalar_t__,...) ; 
 struct iscsi_task* FUNC4 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct hash_desc*) ; 
 int FUNC6 (struct iscsi_conn*,struct iscsi_task*) ; 
 int /*<<< orphan*/  FUNC7 (struct iscsi_tcp_conn*) ; 
 int /*<<< orphan*/  FUNC8 (struct iscsi_tcp_conn*) ; 
 int /*<<< orphan*/  iscsi_tcp_process_data_in ; 
 int FUNC9 (struct iscsi_conn*,struct iscsi_task*) ; 
 int FUNC10 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 void* jiffies ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 struct scsi_data_buffer* FUNC12 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC15(struct iscsi_conn *conn, struct iscsi_hdr *hdr)
{
	int rc = 0, opcode, ahslen;
	struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
	struct iscsi_task *task;

	/* verify PDU length */
	tcp_conn->in.datalen = FUNC11(hdr->dlength);
	if (tcp_conn->in.datalen > conn->max_recv_dlength) {
		FUNC3(KERN_ERR, conn,
				  "iscsi_tcp: datalen %d > %d\n",
				  tcp_conn->in.datalen, conn->max_recv_dlength);
		return ISCSI_ERR_DATALEN;
	}

	/* Additional header segments. So far, we don't
	 * process additional headers.
	 */
	ahslen = hdr->hlength << 2;

	opcode = hdr->opcode & ISCSI_OPCODE_MASK;
	/* verify itt (itt encoding: age+cid+itt) */
	rc = FUNC10(conn, hdr->itt);
	if (rc)
		return rc;

	FUNC0(conn, "opcode 0x%x ahslen %d datalen %d\n",
		      opcode, ahslen, tcp_conn->in.datalen);

	switch(opcode) {
	case ISCSI_OP_SCSI_DATA_IN:
		FUNC13(&conn->session->lock);
		task = FUNC4(conn, hdr->itt);
		if (!task)
			rc = ISCSI_ERR_BAD_ITT;
		else
			rc = FUNC6(conn, task);
		if (rc) {
			FUNC14(&conn->session->lock);
			break;
		}

		if (tcp_conn->in.datalen) {
			struct iscsi_tcp_task *tcp_task = task->dd_data;
			struct hash_desc *rx_hash = NULL;
			struct scsi_data_buffer *sdb = FUNC12(task->sc);

			/*
			 * Setup copy of Data-In into the Scsi_Cmnd
			 * Scatterlist case:
			 * We set up the iscsi_segment to point to the next
			 * scatterlist entry to copy to. As we go along,
			 * we move on to the next scatterlist entry and
			 * update the digest per-entry.
			 */
			if (conn->datadgst_en &&
			    !(conn->session->tt->caps & CAP_DIGEST_OFFLOAD))
				rx_hash = tcp_conn->rx_hash;

			FUNC0(conn, "iscsi_tcp_begin_data_in( "
				     "offset=%d, datalen=%d)\n",
				      tcp_task->data_offset,
				      tcp_conn->in.datalen);
			task->last_xfer = jiffies;
			rc = FUNC5(&tcp_conn->in.segment,
						   sdb->table.sgl,
						   sdb->table.nents,
						   tcp_task->data_offset,
						   tcp_conn->in.datalen,
						   iscsi_tcp_process_data_in,
						   rx_hash);
			FUNC14(&conn->session->lock);
			return rc;
		}
		rc = FUNC1(conn, hdr, NULL, 0);
		FUNC14(&conn->session->lock);
		break;
	case ISCSI_OP_SCSI_CMD_RSP:
		if (tcp_conn->in.datalen) {
			FUNC7(tcp_conn);
			return 0;
		}
		rc = FUNC2(conn, hdr, NULL, 0);
		break;
	case ISCSI_OP_R2T:
		FUNC13(&conn->session->lock);
		task = FUNC4(conn, hdr->itt);
		if (!task)
			rc = ISCSI_ERR_BAD_ITT;
		else if (ahslen)
			rc = ISCSI_ERR_AHSLEN;
		else if (task->sc->sc_data_direction == DMA_TO_DEVICE) {
			task->last_xfer = jiffies;
			rc = FUNC9(conn, task);
		} else
			rc = ISCSI_ERR_PROTO;
		FUNC14(&conn->session->lock);
		break;
	case ISCSI_OP_LOGIN_RSP:
	case ISCSI_OP_TEXT_RSP:
	case ISCSI_OP_REJECT:
	case ISCSI_OP_ASYNC_EVENT:
		/*
		 * It is possible that we could get a PDU with a buffer larger
		 * than 8K, but there are no targets that currently do this.
		 * For now we fail until we find a vendor that needs it
		 */
		if (ISCSI_DEF_MAX_RECV_SEG_LEN < tcp_conn->in.datalen) {
			FUNC3(KERN_ERR, conn,
					  "iscsi_tcp: received buffer of "
					  "len %u but conn buffer is only %u "
					  "(opcode %0x)\n",
					  tcp_conn->in.datalen,
					  ISCSI_DEF_MAX_RECV_SEG_LEN, opcode);
			rc = ISCSI_ERR_PROTO;
			break;
		}

		/* If there's data coming in with the response,
		 * receive it to the connection's buffer.
		 */
		if (tcp_conn->in.datalen) {
			FUNC7(tcp_conn);
			return 0;
		}
	/* fall through */
	case ISCSI_OP_LOGOUT_RSP:
	case ISCSI_OP_NOOP_IN:
	case ISCSI_OP_SCSI_TMFUNC_RSP:
		rc = FUNC2(conn, hdr, NULL, 0);
		break;
	default:
		rc = ISCSI_ERR_BAD_OPCODE;
		break;
	}

	if (rc == 0) {
		/* Anything that comes with data should have
		 * been handled above. */
		if (tcp_conn->in.datalen)
			return ISCSI_ERR_PROTO;
		FUNC8(tcp_conn);
	}

	return rc;
}