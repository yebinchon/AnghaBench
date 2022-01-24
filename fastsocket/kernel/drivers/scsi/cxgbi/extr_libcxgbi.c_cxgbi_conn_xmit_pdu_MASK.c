#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {unsigned int data_len; int /*<<< orphan*/  len; } ;
struct iscsi_tcp_conn {struct cxgbi_conn* dd_data; } ;
struct iscsi_task {TYPE_2__* conn; struct iscsi_task* itt; int /*<<< orphan*/  sc; } ;
struct cxgbi_task_data {struct sk_buff* skb; } ;
struct cxgbi_conn {TYPE_1__* cep; } ;
struct TYPE_5__ {int txdata_octets; scalar_t__ datadgst_en; scalar_t__ hdrdgst_en; struct iscsi_tcp_conn* dd_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  csk; } ;

/* Variables and functions */
 int CXGBI_DBG_ISCSI ; 
 int CXGBI_DBG_PDU_TX ; 
 int EAGAIN ; 
 int ENOBUFS ; 
 scalar_t__ ISCSI_DIGEST_SIZE ; 
 int /*<<< orphan*/  ISCSI_ERR_XMIT_FAILED ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int FUNC0 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,char*,int) ; 
 struct cxgbi_task_data* FUNC3 (struct iscsi_task*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,struct iscsi_task*,...) ; 

int FUNC6(struct iscsi_task *task)
{
	struct iscsi_tcp_conn *tcp_conn = task->conn->dd_data;
	struct cxgbi_conn *cconn = tcp_conn->dd_data;
	struct cxgbi_task_data *tdata = FUNC3(task);
	struct sk_buff *skb = tdata->skb;
	unsigned int datalen;
	int err;

	if (!skb) {
		FUNC5(1 << CXGBI_DBG_ISCSI | 1 << CXGBI_DBG_PDU_TX,
			"task 0x%p, skb NULL.\n", task);
		return 0;
	}

	datalen = skb->data_len;
	tdata->skb = NULL;
	err = FUNC0(cconn->cep->csk, skb);
	if (err > 0) {
		int pdulen = err;

		FUNC5(1 << CXGBI_DBG_PDU_TX,
			"task 0x%p,0x%p, skb 0x%p, len %u/%u, rv %d.\n",
			task, task->sc, skb, skb->len, skb->data_len, err);

		if (task->conn->hdrdgst_en)
			pdulen += ISCSI_DIGEST_SIZE;

		if (datalen && task->conn->datadgst_en)
			pdulen += ISCSI_DIGEST_SIZE;

		task->conn->txdata_octets += pdulen;
		return 0;
	}

	if (err == -EAGAIN || err == -ENOBUFS) {
		FUNC5(1 << CXGBI_DBG_PDU_TX,
			"task 0x%p, skb 0x%p, len %u/%u, %d EAGAIN.\n",
			task, skb, skb->len, skb->data_len, err);
		/* reset skb to send when we are called again */
		tdata->skb = skb;
		return err;
	}

	FUNC4(skb);
	FUNC5(1 << CXGBI_DBG_ISCSI | 1 << CXGBI_DBG_PDU_TX,
		"itt 0x%x, skb 0x%p, len %u/%u, xmit err %d.\n",
		task->itt, skb, skb->len, skb->data_len, err);
	FUNC2(KERN_ERR, task->conn, "xmit err %d.\n", err);
	FUNC1(task->conn, ISCSI_ERR_XMIT_FAILED);
	return err;
}