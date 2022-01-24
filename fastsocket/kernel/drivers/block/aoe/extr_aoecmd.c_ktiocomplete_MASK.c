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
struct sk_buff {long len; scalar_t__ data; int /*<<< orphan*/  dev; } ;
struct frame {int flags; int /*<<< orphan*/  bv_off; int /*<<< orphan*/  bv; int /*<<< orphan*/  skb; struct buf* buf; struct sk_buff* r_skb; struct aoetgt* t; } ;
struct buf {scalar_t__ nframesout; scalar_t__ resid; TYPE_1__* bio; } ;
struct aoetgt {scalar_t__ taint; scalar_t__ nout_probes; struct aoedev* d; } ;
struct aoeif {int /*<<< orphan*/  lost; } ;
struct aoedev {int /*<<< orphan*/  lock; int /*<<< orphan*/  aoeminor; scalar_t__ aoemajor; } ;
struct aoe_hdr {int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct aoe_atahdr {int cmdstat; int scnt; } ;
struct TYPE_2__ {int /*<<< orphan*/  bi_flags; } ;

/* Variables and functions */
#define  ATA_CMD_ID_ATA 132 
#define  ATA_CMD_PIO_READ 131 
#define  ATA_CMD_PIO_READ_EXT 130 
#define  ATA_CMD_PIO_WRITE 129 
#define  ATA_CMD_PIO_WRITE_EXT 128 
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int FFL_PROBE ; 
 int /*<<< orphan*/  FUNC0 (struct aoedev*,struct buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct aoedev*) ; 
 int /*<<< orphan*/  FUNC3 (struct aoedev*,struct aoetgt*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sk_buff*,long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct aoedev*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct aoeif* FUNC10 (struct aoetgt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct aoetgt*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC19(struct frame *f)
{
	struct aoe_hdr *hin, *hout;
	struct aoe_atahdr *ahin, *ahout;
	struct buf *buf;
	struct sk_buff *skb;
	struct aoetgt *t;
	struct aoeif *ifp;
	struct aoedev *d;
	long n;
	int untainted;

	if (f == NULL)
		return;

	t = f->t;
	d = t->d;
	skb = f->r_skb;
	buf = f->buf;
	if (f->flags & FFL_PROBE)
		goto out;
	if (!skb)		/* just fail the buf. */
		goto noskb;

	hout = (struct aoe_hdr *) FUNC15(f->skb);
	ahout = (struct aoe_atahdr *) (hout+1);

	hin = (struct aoe_hdr *) skb->data;
	FUNC16(skb, sizeof(*hin));
	ahin = (struct aoe_atahdr *) skb->data;
	FUNC16(skb, sizeof(*ahin));
	if (ahin->cmdstat & 0xa9) {	/* these bits cleared on success */
		FUNC11("aoe: ata error cmd=%2.2Xh stat=%2.2Xh from e%ld.%d\n",
			ahout->cmdstat, ahin->cmdstat,
			d->aoemajor, d->aoeminor);
noskb:		if (buf)
			FUNC6(BIO_UPTODATE, &buf->bio->bi_flags);
		goto out;
	}

	n = ahout->scnt << 9;
	switch (ahout->cmdstat) {
	case ATA_CMD_PIO_READ:
	case ATA_CMD_PIO_READ_EXT:
		if (skb->len < n) {
			FUNC11("%s e%ld.%d.  skb->len=%d need=%ld\n",
				"aoe: runt data size in read from",
				(long) d->aoemajor, d->aoeminor,
			       skb->len, n);
			FUNC6(BIO_UPTODATE, &buf->bio->bi_flags);
			break;
		}
		FUNC5(f->bv, f->bv_off, skb, n);
	case ATA_CMD_PIO_WRITE:
	case ATA_CMD_PIO_WRITE_EXT:
		FUNC17(&d->lock);
		ifp = FUNC10(t, skb->dev);
		if (ifp)
			ifp->lost = 0;
		FUNC18(&d->lock);
		break;
	case ATA_CMD_ID_ATA:
		if (skb->len < 512) {
			FUNC12("%s e%ld.%d.  skb->len=%d need=512\n",
				"aoe: runt data size in ataid from",
				(long) d->aoemajor, d->aoeminor,
				skb->len);
			break;
		}
		if (FUNC14(skb))
			break;
		FUNC17(&d->lock);
		FUNC3(d, t, skb->data);
		FUNC18(&d->lock);
		break;
	default:
		FUNC12("aoe: unrecognized ata command %2.2Xh for %d.%d\n",
			ahout->cmdstat,
			FUNC4(FUNC9(&hin->major)),
			hin->minor);
	}
out:
	FUNC17(&d->lock);
	if (t->taint > 0
	&& --t->taint > 0
	&& t->nout_probes == 0) {
		FUNC7(d, &untainted);
		if (untainted > 0) {
			FUNC13(t);
			t->nout_probes++;
		}
	}

	FUNC1(f);

	if (buf && --buf->nframesout == 0 && buf->resid == 0)
		FUNC0(d, buf);

	FUNC18(&d->lock);
	FUNC2(d);
	FUNC8(skb);
}