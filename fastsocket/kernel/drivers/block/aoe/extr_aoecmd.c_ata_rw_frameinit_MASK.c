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
struct sk_buff {int len; int data_len; int truesize; int /*<<< orphan*/  dev; } ;
struct frame {int bcnt; int /*<<< orphan*/  bv_off; int /*<<< orphan*/  bv; TYPE_1__* buf; int /*<<< orphan*/  lba; scalar_t__ waited_total; scalar_t__ waited; int /*<<< orphan*/  tag; struct aoetgt* t; struct sk_buff* skb; } ;
struct aoetgt {TYPE_2__* ifp; int /*<<< orphan*/  rpkts; int /*<<< orphan*/  wpkts; TYPE_3__* d; int /*<<< orphan*/  nout; } ;
struct aoe_hdr {int dummy; } ;
struct aoe_atahdr {int scnt; int lba3; char cmdstat; int /*<<< orphan*/  aflags; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  nd; } ;
struct TYPE_4__ {int /*<<< orphan*/  bio; int /*<<< orphan*/  sector; } ;

/* Variables and functions */
 int /*<<< orphan*/  AOEAFL_EXT ; 
 int /*<<< orphan*/  AOEAFL_WRITE ; 
 char ATA_CMD_PIO_READ ; 
 int DEVFL_EXT ; 
 scalar_t__ WRITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,struct aoetgt*,struct aoe_hdr*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct frame*) ; 
 int /*<<< orphan*/  FUNC3 (struct aoe_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct aoe_atahdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 

__attribute__((used)) static void
FUNC8(struct frame *f)
{
	struct aoetgt *t;
	struct aoe_hdr *h;
	struct aoe_atahdr *ah;
	struct sk_buff *skb;
	char writebit, extbit;

	skb = f->skb;
	h = (struct aoe_hdr *) FUNC6(skb);
	ah = (struct aoe_atahdr *) (h + 1);
	FUNC7(skb, sizeof(*h) + sizeof(*ah));
	FUNC3(h, 0, skb->len);

	writebit = 0x10;
	extbit = 0x4;

	t = f->t;
	f->tag = FUNC0(t->d, t, h);
	FUNC2(f);
	t->nout++;
	f->waited = 0;
	f->waited_total = 0;
	if (f->buf)
		f->lba = f->buf->sector;

	/* set up ata header */
	ah->scnt = f->bcnt >> 9;
	FUNC4(ah, f->lba);
	if (t->d->flags & DEVFL_EXT) {
		ah->aflags |= AOEAFL_EXT;
	} else {
		extbit = 0;
		ah->lba3 &= 0x0f;
		ah->lba3 |= 0xe0;	/* LBA bit + obsolete 0xa0 */
	}
	if (f->buf && FUNC1(f->buf->bio) == WRITE) {
		FUNC5(skb, f->bv, f->bv_off, f->bcnt);
		ah->aflags |= AOEAFL_WRITE;
		skb->len += f->bcnt;
		skb->data_len = f->bcnt;
		skb->truesize += f->bcnt;
		t->wpkts++;
	} else {
		t->rpkts++;
		writebit = 0;
	}

	ah->cmdstat = ATA_CMD_PIO_READ | writebit | extbit;
	skb->dev = t->ifp->nd;
}