#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint ;
struct sk_buff {scalar_t__ len; scalar_t__ data_len; struct sk_buff* next; } ;
struct cxgbi_sock {scalar_t__ state; int err; scalar_t__ write_seq; scalar_t__ snd_una; int /*<<< orphan*/  lock; int /*<<< orphan*/  write_queue; int /*<<< orphan*/  tid; int /*<<< orphan*/  flags; struct cxgbi_device* cdev; } ;
struct cxgbi_device {scalar_t__ snd_win; scalar_t__ skb_tx_rsvd; int /*<<< orphan*/  (* csk_push_tx_frames ) (struct cxgbi_sock*,int) ;} ;
struct TYPE_2__ {int nr_frags; } ;

/* Variables and functions */
 scalar_t__ CTP_ESTABLISHED ; 
 int CXGBI_DBG_PDU_TX ; 
 int EAGAIN ; 
 int EINVAL ; 
 int ENOBUFS ; 
 int EPIPE ; 
 int SKB_WR_LIST_SIZE ; 
 int /*<<< orphan*/  SKCBF_TX_NEED_HDR ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct cxgbi_sock*,struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,struct cxgbi_sock*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct cxgbi_sock*,int,scalar_t__,...) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct cxgbi_sock*,int) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct cxgbi_sock *csk, struct sk_buff *skb)
{
	struct cxgbi_device *cdev = csk->cdev;
	struct sk_buff *next;
	int err, copied = 0;

	FUNC10(&csk->lock);

	if (csk->state != CTP_ESTABLISHED) {
		FUNC5(1 << CXGBI_DBG_PDU_TX,
			"csk 0x%p,%u,0x%lx,%u, EAGAIN.\n",
			csk, csk->state, csk->flags, csk->tid);
		err = -EAGAIN;
		goto out_err;
	}

	if (csk->err) {
		FUNC5(1 << CXGBI_DBG_PDU_TX,
			"csk 0x%p,%u,0x%lx,%u, EPIPE %d.\n",
			csk, csk->state, csk->flags, csk->tid, csk->err);
		err = -EPIPE;
		goto out_err;
	}

	if (csk->write_seq - csk->snd_una >= cdev->snd_win) {
		FUNC5(1 << CXGBI_DBG_PDU_TX,
			"csk 0x%p,%u,0x%lx,%u, FULL %u-%u >= %u.\n",
			csk, csk->state, csk->flags, csk->tid, csk->write_seq,
			csk->snd_una, cdev->snd_win);
		err = -ENOBUFS;
		goto out_err;
	}

	while (skb) {
		int frags = FUNC9(skb)->nr_frags +
				(skb->len != skb->data_len);

		if (FUNC13(FUNC7(skb) < cdev->skb_tx_rsvd)) {
			FUNC6("csk 0x%p, skb head %u < %u.\n",
				csk, FUNC7(skb), cdev->skb_tx_rsvd);
			err = -EINVAL;
			goto out_err;
		}

		if (frags >= SKB_WR_LIST_SIZE) {
			FUNC6("csk 0x%p, frags %d, %u,%u >%u.\n",
				csk, FUNC9(skb)->nr_frags, skb->len,
				skb->data_len, (uint)(SKB_WR_LIST_SIZE));
			err = -EINVAL;
			goto out_err;
		}

		next = skb->next;
		skb->next = NULL;
		FUNC0(skb, SKCBF_TX_NEED_HDR);
		FUNC2(csk, skb);
		copied += skb->len;
		csk->write_seq += skb->len +
				FUNC3(FUNC1(skb));
		skb = next;
	}
done:
	if (FUNC4(FUNC8(&csk->write_queue)))
		cdev->csk_push_tx_frames(csk, 1);
	FUNC11(&csk->lock);
	return copied;

out_err:
	if (copied == 0 && err == -EPIPE)
		copied = csk->err ? csk->err : -EPIPE;
	else
		copied = err;
	goto done;
}