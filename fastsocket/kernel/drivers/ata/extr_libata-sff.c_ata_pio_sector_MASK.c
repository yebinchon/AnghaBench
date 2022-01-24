#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct TYPE_6__ {int flags; } ;
struct ata_queued_cmd {scalar_t__ curbytes; scalar_t__ nbytes; scalar_t__ sect_size; unsigned int cursg_ofs; TYPE_3__* cursg; int /*<<< orphan*/  dev; TYPE_1__ tf; struct ata_port* ap; } ;
struct ata_port {TYPE_2__* ops; int /*<<< orphan*/  hsm_task_state; } ;
struct TYPE_8__ {unsigned int offset; unsigned int length; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* sff_data_xfer ) (int /*<<< orphan*/ ,unsigned char*,scalar_t__,int) ;} ;

/* Variables and functions */
 int ATA_TFLAG_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  HSM_ST_LAST ; 
 int /*<<< orphan*/  KM_IRQ0 ; 
 unsigned int PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 unsigned char* FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 struct page* FUNC8 (struct page*,unsigned int) ; 
 unsigned char* FUNC9 (struct page*) ; 
 TYPE_3__* FUNC10 (TYPE_3__*) ; 
 struct page* FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,unsigned char*,scalar_t__,int) ; 

__attribute__((used)) static void FUNC14(struct ata_queued_cmd *qc)
{
	int do_write = (qc->tf.flags & ATA_TFLAG_WRITE);
	struct ata_port *ap = qc->ap;
	struct page *page;
	unsigned int offset;
	unsigned char *buf;

	if (qc->curbytes == qc->nbytes - qc->sect_size)
		ap->hsm_task_state = HSM_ST_LAST;

	page = FUNC11(qc->cursg);
	offset = qc->cursg->offset + qc->cursg_ofs;

	/* get the current page and offset */
	page = FUNC8(page, (offset >> PAGE_SHIFT));
	offset %= PAGE_SIZE;

	FUNC0("data %s\n", qc->tf.flags & ATA_TFLAG_WRITE ? "write" : "read");

	if (FUNC1(page)) {
		unsigned long flags;

		/* FIXME: use a bounce buffer */
		FUNC7(flags);
		buf = FUNC4(page, KM_IRQ0);

		/* do the actual data transfer */
		ap->ops->sff_data_xfer(qc->dev, buf + offset, qc->sect_size,
				       do_write);

		FUNC5(buf, KM_IRQ0);
		FUNC6(flags);
	} else {
		buf = FUNC9(page);
		ap->ops->sff_data_xfer(qc->dev, buf + offset, qc->sect_size,
				       do_write);
	}

	if (!do_write && !FUNC2(page))
		FUNC3(page);

	qc->curbytes += qc->sect_size;
	qc->cursg_ofs += qc->sect_size;

	if (qc->cursg_ofs == qc->cursg->length) {
		qc->cursg = FUNC10(qc->cursg);
		qc->cursg_ofs = 0;
	}
}