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
typedef  void* u32 ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {TYPE_1__* dev; } ;
struct frame {int flags; void* sent_jiffs; int /*<<< orphan*/  sent; void* tag; struct sk_buff* skb; struct aoetgt* t; } ;
struct aoetgt {TYPE_2__* ifp; int /*<<< orphan*/  addr; int /*<<< orphan*/  nout; } ;
struct aoedev {int /*<<< orphan*/  aoeminor; int /*<<< orphan*/  aoemajor; } ;
struct aoe_hdr {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; int /*<<< orphan*/  tag; } ;
struct aoe_atahdr {int dummy; } ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {TYPE_1__* nd; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int FFL_PROBE ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct frame*) ; 
 int /*<<< orphan*/ * FUNC7 (struct aoetgt*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC8 (struct frame*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC10 (struct aoedev*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 struct sk_buff* FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,scalar_t__,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(struct aoedev *d, struct frame *f)
{
	struct sk_buff *skb;
	struct sk_buff_head queue;
	struct aoe_hdr *h;
	struct aoe_atahdr *ah;
	struct aoetgt *t;
	char buf[128];
	u32 n;

	t = f->t;
	n = FUNC10(d);
	skb = f->skb;
	if (FUNC7(t) == NULL) {
		/* probably can't happen, but set it up to fail anyway */
		FUNC11("aoe: resend: no interfaces to rotate to.\n");
		FUNC8(f, NULL);
		return;
	}
	h = (struct aoe_hdr *) FUNC13(skb);
	ah = (struct aoe_atahdr *) (h+1);

	if (!(f->flags & FFL_PROBE)) {
		FUNC14(buf, sizeof(buf),
			"%15s e%ld.%d oldtag=%08x@%08lx newtag=%08x s=%pm d=%pm nout=%d\n",
			"retransmit", d->aoemajor, d->aoeminor,
			f->tag, jiffies, n,
			h->src, h->dst, t->nout);
		FUNC2(buf);
	}

	f->tag = n;
	FUNC6(f);
	h->tag = FUNC4(n);
	FUNC9(h->dst, t->addr, sizeof h->dst);
	FUNC9(h->src, t->ifp->nd->dev_addr, sizeof h->src);

	skb->dev = t->ifp->nd;
	skb = FUNC12(skb, GFP_ATOMIC);
	if (skb == NULL)
		return;
	FUNC5(&f->sent);
	f->sent_jiffs = (u32) jiffies;
	FUNC0(&queue);
	FUNC1(&queue, skb);
	FUNC3(&queue);
}