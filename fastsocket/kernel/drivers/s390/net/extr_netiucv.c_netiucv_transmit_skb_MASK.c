#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  users; struct ll_header* data; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_errors; } ;
struct netiucv_priv {TYPE_2__ stats; } ;
struct ll_header {scalar_t__ next; } ;
struct iucv_message {int tag; scalar_t__ class; } ;
struct TYPE_3__ {scalar_t__ txlen; scalar_t__ tx_pending; scalar_t__ tx_max_pending; int /*<<< orphan*/  doios_single; int /*<<< orphan*/  send_stamp; } ;
struct iucv_connection {scalar_t__ collect_len; scalar_t__ max_buffsize; int /*<<< orphan*/  commit_queue; int /*<<< orphan*/  netdev; TYPE_1__ prof; int /*<<< orphan*/  fsm; int /*<<< orphan*/  path; int /*<<< orphan*/  collect_lock; int /*<<< orphan*/  collect_queue; } ;

/* Variables and functions */
 scalar_t__ CONN_STATE_IDLE ; 
 scalar_t__ CONN_STATE_TX ; 
 int EBUSY ; 
 int ENOMEM ; 
 int GFP_ATOMIC ; 
 int GFP_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char*,int) ; 
 scalar_t__ NETIUCV_HDRLEN ; 
 struct sk_buff* FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  data ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct iucv_message*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ll_header*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct ll_header*,scalar_t__) ; 
 struct netiucv_priv* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,scalar_t__) ; 
 scalar_t__ FUNC16 (struct sk_buff*) ; 
 int FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC21(struct iucv_connection *conn,
				struct sk_buff *skb)
{
	struct iucv_message msg;
	unsigned long saveflags;
	struct ll_header header;
	int rc;

	if (FUNC6(conn->fsm) != CONN_STATE_IDLE) {
		int l = skb->len + NETIUCV_HDRLEN;

		FUNC19(&conn->collect_lock, saveflags);
		if (conn->collect_len + l >
		    (conn->max_buffsize - NETIUCV_HDRLEN)) {
			rc = -EBUSY;
			FUNC0(data, 2,
				      "EBUSY from netiucv_transmit_skb\n");
		} else {
			FUNC3(&skb->users);
			FUNC14(&conn->collect_queue, skb);
			conn->collect_len += l;
			rc = 0;
		}
		FUNC20(&conn->collect_lock, saveflags);
	} else {
		struct sk_buff *nskb = skb;
		/**
		 * Copy the skb to a new allocated skb in lowmem only if the
		 * data is located above 2G in memory or tailroom is < 2.
		 */
		unsigned long hi = ((unsigned long)(FUNC16(skb) +
				    NETIUCV_HDRLEN)) >> 31;
		int copied = 0;
		if (hi || (FUNC17(skb) < 2)) {
			nskb = FUNC2(skb->len + NETIUCV_HDRLEN +
					 NETIUCV_HDRLEN, GFP_ATOMIC | GFP_DMA);
			if (!nskb) {
				FUNC0(data, 2, "alloc_skb failed\n");
				rc = -ENOMEM;
				return rc;
			} else {
				FUNC15(nskb, NETIUCV_HDRLEN);
				FUNC9(FUNC13(nskb, skb->len),
				       skb->data, skb->len);
			}
			copied = 1;
		}
		/**
		 * skb now is below 2G and has enough room. Add headers.
		 */
		header.next = nskb->len + NETIUCV_HDRLEN;
		FUNC9(FUNC12(nskb, NETIUCV_HDRLEN), &header, NETIUCV_HDRLEN);
		header.next = 0;
		FUNC9(FUNC13(nskb, NETIUCV_HDRLEN), &header,  NETIUCV_HDRLEN);

		FUNC7(conn->fsm, CONN_STATE_TX);
		conn->prof.send_stamp = FUNC4();

		msg.tag = 1;
		msg.class = 0;
		rc = FUNC8(conn->path, &msg, 0, 0,
				       nskb->data, nskb->len);
		conn->prof.doios_single++;
		conn->prof.txlen += skb->len;
		conn->prof.tx_pending++;
		if (conn->prof.tx_pending > conn->prof.tx_max_pending)
			conn->prof.tx_max_pending = conn->prof.tx_pending;
		if (rc) {
			struct netiucv_priv *privptr;
			FUNC7(conn->fsm, CONN_STATE_IDLE);
			conn->prof.tx_pending--;
			privptr = FUNC10(conn->netdev);
			if (privptr)
				privptr->stats.tx_errors++;
			if (copied)
				FUNC5(nskb);
			else {
				/**
				 * Remove our headers. They get added
				 * again on retransmit.
				 */
				FUNC11(skb, NETIUCV_HDRLEN);
				FUNC18(skb, skb->len - NETIUCV_HDRLEN);
			}
			FUNC1(data, 2, "rc %d from iucv_send\n", rc);
		} else {
			if (copied)
				FUNC5(skb);
			FUNC3(&nskb->users);
			FUNC14(&conn->commit_queue, nskb);
		}
	}

	return rc;
}