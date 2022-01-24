#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff {unsigned int copied_seq; int /*<<< orphan*/  len; int /*<<< orphan*/  receive_queue; struct iscsi_conn* user_data; struct cxgbi_device* cdev; } ;
struct iscsi_conn {int suspend_rx; int id; unsigned int rxdata_octets; } ;
struct cxgbi_sock {unsigned int copied_seq; int /*<<< orphan*/  len; int /*<<< orphan*/  receive_queue; struct iscsi_conn* user_data; struct cxgbi_device* cdev; } ;
struct cxgbi_device {scalar_t__ skb_rx_extra; } ;

/* Variables and functions */
 int CXGBI_DBG_PDU_RX ; 
 int EIO ; 
 int /*<<< orphan*/  ISCSI_ERR_CONN_FAILED ; 
 int /*<<< orphan*/  SKCBF_RX_COALESCED ; 
 int /*<<< orphan*/  SKCBF_RX_DATA ; 
 int /*<<< orphan*/  SKCBF_RX_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,unsigned int) ; 
 unsigned int FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,struct sk_buff*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct sk_buff*,struct sk_buff*,int /*<<< orphan*/ ,unsigned int,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,struct sk_buff*,struct iscsi_conn*,int,unsigned int) ; 
 struct sk_buff* FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (struct iscsi_conn*,struct sk_buff*) ; 
 int FUNC12 (struct iscsi_conn*,struct sk_buff*,struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC13 (int) ; 

void FUNC14(struct cxgbi_sock *csk)
{
	struct cxgbi_device *cdev = csk->cdev;
	struct iscsi_conn *conn = csk->user_data;
	struct sk_buff *skb;
	unsigned int read = 0;
	int err = 0;

	FUNC7(1 << CXGBI_DBG_PDU_RX,
		"csk 0x%p, conn 0x%p.\n", csk, conn);

	if (FUNC13(!conn || conn->suspend_rx)) {
		FUNC7(1 << CXGBI_DBG_PDU_RX,
			"csk 0x%p, conn 0x%p, id %d, suspend_rx %lu!\n",
			csk, conn, conn ? conn->id : 0xFF,
			conn ? conn->suspend_rx : 0xFF);
		return;
	}

	while (!err) {
		skb = FUNC10(&csk->receive_queue);
		if (!skb ||
		    !(FUNC5(skb, SKCBF_RX_STATUS))) {
			if (skb)
				FUNC7(1 << CXGBI_DBG_PDU_RX,
					"skb 0x%p, NOT ready 0x%lx.\n",
					skb, FUNC3(skb));
			break;
		}
		FUNC1(skb, &csk->receive_queue);

		read += FUNC4(skb);
		FUNC7(1 << CXGBI_DBG_PDU_RX,
			"csk 0x%p, skb 0x%p,%u,f 0x%lx, pdu len %u.\n",
			csk, skb, skb->len, FUNC3(skb),
			FUNC4(skb));

		if (FUNC5(skb, SKCBF_RX_COALESCED)) {
			err = FUNC11(conn, skb);
			if (err < 0) {
				FUNC8("coalesced bhs, csk 0x%p, skb 0x%p,%u, "
					"f 0x%lx, plen %u.\n",
					csk, skb, skb->len,
					FUNC3(skb),
					FUNC4(skb));
				goto skb_done;
			}
			err = FUNC12(conn, skb, skb,
						err + cdev->skb_rx_extra);
			if (err < 0)
				FUNC8("coalesced data, csk 0x%p, skb 0x%p,%u, "
					"f 0x%lx, plen %u.\n",
					csk, skb, skb->len,
					FUNC3(skb),
					FUNC4(skb));
		} else {
			err = FUNC11(conn, skb);
			if (err < 0) {
				FUNC8("bhs, csk 0x%p, skb 0x%p,%u, "
					"f 0x%lx, plen %u.\n",
					csk, skb, skb->len,
					FUNC3(skb),
					FUNC4(skb));
				goto skb_done;
			}

			if (FUNC5(skb, SKCBF_RX_DATA)) {
				struct sk_buff *dskb;

				dskb = FUNC10(&csk->receive_queue);
				if (!dskb) {
					FUNC8("csk 0x%p, skb 0x%p,%u, f 0x%lx,"
						" plen %u, NO data.\n",
						csk, skb, skb->len,
						FUNC3(skb),
						FUNC4(skb));
					err = -EIO;
					goto skb_done;
				}
				FUNC1(dskb, &csk->receive_queue);

				err = FUNC12(conn, skb, dskb, 0);
				if (err < 0)
					FUNC8("data, csk 0x%p, skb 0x%p,%u, "
						"f 0x%lx, plen %u, dskb 0x%p,"
						"%u.\n",
						csk, skb, skb->len,
						FUNC3(skb),
						FUNC4(skb),
						dskb, dskb->len);
				FUNC0(dskb);
			} else
				err = FUNC12(conn, skb, skb, 0);
		}
skb_done:
		FUNC0(skb);

		if (err < 0)
			break;
	}

	FUNC7(1 << CXGBI_DBG_PDU_RX, "csk 0x%p, read %u.\n", csk, read);
	if (read) {
		csk->copied_seq += read;
		FUNC2(csk, read);
		conn->rxdata_octets += read;
	}

	if (err < 0) {
		FUNC9("csk 0x%p, 0x%p, rx failed %d, read %u.\n",
			csk, conn, err, read);
		FUNC6(conn, ISCSI_ERR_CONN_FAILED);
	}
}