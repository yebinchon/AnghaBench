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
typedef  scalar_t__ ulong ;
typedef  scalar_t__ u32 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct frame {scalar_t__ bv_off; scalar_t__ sent_jiffs; int /*<<< orphan*/  sent; int /*<<< orphan*/  skb; scalar_t__ bcnt; struct buf* buf; TYPE_2__* bv; } ;
struct buf {scalar_t__ resid; scalar_t__ bv_resid; int nframesout; scalar_t__ sector; TYPE_2__* bv; } ;
struct aoetgt {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/ * buf; } ;
struct aoedev {scalar_t__ maxbcnt; TYPE_1__ ip; struct aoetgt** tgt; } ;
struct TYPE_4__ {scalar_t__ bv_offset; scalar_t__ bv_len; } ;

/* Variables and functions */
 scalar_t__ DEFAULTBCNT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC4 (struct frame*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 struct frame* FUNC6 (struct aoedev*) ; 
 struct buf* FUNC7 (struct aoedev*) ; 
 struct sk_buff* FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9(struct aoedev *d)
{
	struct frame *f;
	struct buf *buf;
	struct aoetgt *t;
	struct sk_buff *skb;
	struct sk_buff_head queue;
	ulong bcnt, fbcnt;

	buf = FUNC7(d);
	if (buf == NULL)
		return 0;
	f = FUNC6(d);
	if (f == NULL)
		return 0;
	t = *d->tgt;
	bcnt = d->maxbcnt;
	if (bcnt == 0)
		bcnt = DEFAULTBCNT;
	if (bcnt > buf->resid)
		bcnt = buf->resid;
	fbcnt = bcnt;
	f->bv = buf->bv;
	f->bv_off = f->bv->bv_offset + (f->bv->bv_len - buf->bv_resid);
	do {
		if (fbcnt < buf->bv_resid) {
			buf->bv_resid -= fbcnt;
			buf->resid -= fbcnt;
			break;
		}
		fbcnt -= buf->bv_resid;
		buf->resid -= buf->bv_resid;
		if (buf->resid == 0) {
			d->ip.buf = NULL;
			break;
		}
		buf->bv++;
		buf->bv_resid = buf->bv->bv_len;
		FUNC0(buf->bv_resid == 0);
	} while (fbcnt);

	/* initialize the headers & frame */
	f->buf = buf;
	f->bcnt = bcnt;
	FUNC4(f);

	/* mark all tracking fields and load out */
	buf->nframesout += 1;
	buf->sector += bcnt >> 9;

	skb = FUNC8(f->skb, GFP_ATOMIC);
	if (skb) {
		FUNC5(&f->sent);
		f->sent_jiffs = (u32) jiffies;
		FUNC1(&queue);
		FUNC2(&queue, skb);
		FUNC3(&queue);
	}
	return 1;
}