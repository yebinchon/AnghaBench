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
struct scatterlist {unsigned int offset; unsigned int length; } ;
struct page {int dummy; } ;
struct TYPE_5__ {int flags; } ;
struct ata_queued_cmd {unsigned int curbytes; unsigned int cursg_ofs; struct scatterlist* cursg; TYPE_2__ tf; int /*<<< orphan*/  nbytes; struct ata_device* dev; struct ata_port* ap; } ;
struct ata_port {TYPE_3__* ops; } ;
struct ata_eh_info {int dummy; } ;
struct ata_device {TYPE_1__* link; } ;
struct TYPE_6__ {unsigned int (* sff_data_xfer ) (struct ata_device*,unsigned char*,unsigned int,int) ;} ;
struct TYPE_4__ {struct ata_eh_info eh_info; } ;

/* Variables and functions */
 int ATA_TFLAG_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  KM_IRQ0 ; 
 unsigned int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int READ ; 
 int WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct ata_eh_info*,char*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 unsigned char* FUNC3 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 unsigned int FUNC7 (unsigned int,unsigned int) ; 
 struct page* FUNC8 (struct page*,unsigned int) ; 
 unsigned char* FUNC9 (struct page*) ; 
 struct scatterlist* FUNC10 (struct scatterlist*) ; 
 struct page* FUNC11 (struct scatterlist*) ; 
 unsigned int FUNC12 (struct ata_device*,unsigned char*,unsigned int,int) ; 
 unsigned int FUNC13 (struct ata_device*,unsigned char*,unsigned int,int) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct ata_queued_cmd *qc, unsigned int bytes)
{
	int rw = (qc->tf.flags & ATA_TFLAG_WRITE) ? WRITE : READ;
	struct ata_port *ap = qc->ap;
	struct ata_device *dev = qc->dev;
	struct ata_eh_info *ehi = &dev->link->eh_info;
	struct scatterlist *sg;
	struct page *page;
	unsigned char *buf;
	unsigned int offset, count, consumed;

next_sg:
	sg = qc->cursg;
	if (FUNC14(!sg)) {
		FUNC2(ehi, "unexpected or too much trailing data "
				  "buf=%u cur=%u bytes=%u",
				  qc->nbytes, qc->curbytes, bytes);
		return -1;
	}

	page = FUNC11(sg);
	offset = sg->offset + qc->cursg_ofs;

	/* get the current page and offset */
	page = FUNC8(page, (offset >> PAGE_SHIFT));
	offset %= PAGE_SIZE;

	/* don't overrun current sg */
	count = FUNC7(sg->length - qc->cursg_ofs, bytes);

	/* don't cross page boundaries */
	count = FUNC7(count, (unsigned int)PAGE_SIZE - offset);

	FUNC0("data %s\n", qc->tf.flags & ATA_TFLAG_WRITE ? "write" : "read");

	if (FUNC1(page)) {
		unsigned long flags;

		/* FIXME: use bounce buffer */
		FUNC6(flags);
		buf = FUNC3(page, KM_IRQ0);

		/* do the actual data transfer */
		consumed = ap->ops->sff_data_xfer(dev,  buf + offset,
								count, rw);

		FUNC4(buf, KM_IRQ0);
		FUNC5(flags);
	} else {
		buf = FUNC9(page);
		consumed = ap->ops->sff_data_xfer(dev,  buf + offset,
								count, rw);
	}

	bytes -= FUNC7(bytes, consumed);
	qc->curbytes += count;
	qc->cursg_ofs += count;

	if (qc->cursg_ofs == sg->length) {
		qc->cursg = FUNC10(qc->cursg);
		qc->cursg_ofs = 0;
	}

	/*
	 * There used to be a  WARN_ON_ONCE(qc->cursg && count != consumed);
	 * Unfortunately __atapi_pio_bytes doesn't know enough to do the WARN
	 * check correctly as it doesn't know if it is the last request being
	 * made. Somebody should implement a proper sanity check.
	 */
	if (bytes)
		goto next_sg;
	return 0;
}