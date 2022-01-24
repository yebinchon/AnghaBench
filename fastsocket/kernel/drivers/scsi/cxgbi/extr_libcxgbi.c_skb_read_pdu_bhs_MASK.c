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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct iscsi_tcp_conn {int dummy; } ;
struct iscsi_conn {scalar_t__ hdrdgst_en; struct iscsi_tcp_conn* dd_data; } ;

/* Variables and functions */
 int CXGBI_DBG_PDU_RX ; 
 int EIO ; 
 int /*<<< orphan*/  ISCSI_ERR_HDR_DGST ; 
 int /*<<< orphan*/  ISCSI_ERR_PROTO ; 
 int /*<<< orphan*/  SKCBF_RX_HCRC_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iscsi_tcp_conn*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,struct iscsi_conn*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct iscsi_conn*,struct sk_buff*) ; 
 int FUNC6 (struct iscsi_conn*,struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct iscsi_conn *conn, struct sk_buff *skb)
{
	struct iscsi_tcp_conn *tcp_conn = conn->dd_data;

	FUNC4(1 << CXGBI_DBG_PDU_RX,
		"conn 0x%p, skb 0x%p, len %u, flag 0x%lx.\n",
		conn, skb, skb->len, FUNC0(skb));

	if (!FUNC3(tcp_conn)) {
		FUNC5("conn 0x%p, skb 0x%p, not hdr.\n", conn, skb);
		FUNC2(conn, ISCSI_ERR_PROTO);
		return -EIO;
	}

	if (conn->hdrdgst_en &&
	    FUNC1(skb, SKCBF_RX_HCRC_ERR)) {
		FUNC5("conn 0x%p, skb 0x%p, hcrc.\n", conn, skb);
		FUNC2(conn, ISCSI_ERR_HDR_DGST);
		return -EIO;
	}

	return FUNC6(conn, skb, 0, 0);
}