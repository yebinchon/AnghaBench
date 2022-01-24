#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  void* u32 ;
struct TYPE_5__ {int /*<<< orphan*/ * r_data; } ;
struct TYPE_6__ {TYPE_2__ r; int /*<<< orphan*/ * u_data; } ;
struct ldc_packet {int env; void* seqid; scalar_t__ ctrl; int /*<<< orphan*/  stype; int /*<<< orphan*/  type; TYPE_3__ u; } ;
struct TYPE_4__ {scalar_t__ mode; } ;
struct ldc_channel {unsigned long tx_tail; scalar_t__ chan_state; int mss; void* snd_nxt; TYPE_1__ cfg; struct ldc_packet* tx_base; int /*<<< orphan*/  tx_head; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DATA ; 
 int EAGAIN ; 
 int EBUSY ; 
 scalar_t__ LDC_CHANNEL_UP ; 
 int /*<<< orphan*/  LDC_DATA ; 
 int /*<<< orphan*/  LDC_INFO ; 
 int LDC_LEN ; 
 scalar_t__ LDC_MODE_UNRELIABLE ; 
 unsigned long LDC_PACKET_SIZE ; 
 int LDC_START ; 
 int LDC_STOP ; 
 int FUNC1 (struct ldc_channel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const*,int) ; 
 int FUNC4 (struct ldc_channel*,unsigned long) ; 
 unsigned long FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long*,scalar_t__*) ; 
 unsigned long FUNC6 (struct ldc_channel*,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct ldc_channel*,unsigned int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct ldc_channel *lp, const void *buf,
			unsigned int size)
{
	unsigned long hv_err, tail;
	unsigned int copied;
	u32 seq;
	int err;

	hv_err = FUNC5(lp->id, &lp->tx_head, &lp->tx_tail,
					&lp->chan_state);
	if (FUNC8(hv_err))
		return -EBUSY;

	if (FUNC8(lp->chan_state != LDC_CHANNEL_UP))
		return FUNC1(lp);

	if (!FUNC7(lp, size))
		return -EAGAIN;

	seq = lp->snd_nxt;
	copied = 0;
	tail = lp->tx_tail;
	while (copied < size) {
		struct ldc_packet *p = lp->tx_base + (tail / LDC_PACKET_SIZE);
		u8 *data = ((lp->cfg.mode == LDC_MODE_UNRELIABLE) ?
			    p->u.u_data :
			    p->u.r.r_data);
		int data_len;

		p->type = LDC_DATA;
		p->stype = LDC_INFO;
		p->ctrl = 0;

		data_len = size - copied;
		if (data_len > lp->mss)
			data_len = lp->mss;

		FUNC0(data_len > LDC_LEN);

		p->env = (data_len |
			  (copied == 0 ? LDC_START : 0) |
			  (data_len == size - copied ? LDC_STOP : 0));

		p->seqid = ++seq;

		FUNC2(DATA, "SENT DATA [%02x:%02x:%02x:%02x:%08x]\n",
		       p->type,
		       p->stype,
		       p->ctrl,
		       p->env,
		       p->seqid);

		FUNC3(data, buf, data_len);
		buf += data_len;
		copied += data_len;

		tail = FUNC6(lp, tail);
	}

	err = FUNC4(lp, tail);
	if (!err) {
		lp->snd_nxt = seq;
		err = size;
	}

	return err;
}