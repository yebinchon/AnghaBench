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
typedef  int u32 ;
struct vc_map {int /*<<< orphan*/  flags; int /*<<< orphan*/  index; } ;
struct tsq_entry {int /*<<< orphan*/  word_2; int /*<<< orphan*/  word_1; } ;
struct TYPE_2__ {struct tsq_entry* next; struct tsq_entry* base; struct tsq_entry* last; } ;
struct idt77252_dev {int vpibits; int vcibits; TYPE_1__ tsq; int /*<<< orphan*/  index; int /*<<< orphan*/  name; struct vc_map** vcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAR_REG_TSQB ; 
 int /*<<< orphan*/  SAR_REG_TSQH ; 
 int /*<<< orphan*/  SAR_REG_TSQT ; 
 int SAR_TBD_VCI_SHIFT ; 
 int SAR_TBD_VPI_SHIFT ; 
 int SAR_TSQE_INVALID ; 
 int FUNC0 (int) ; 
 int SAR_TSQE_TYPE ; 
#define  SAR_TSQE_TYPE_IDLE 131 
#define  SAR_TSQE_TYPE_TBD_COMP 130 
#define  SAR_TSQE_TYPE_TIMER 129 
#define  SAR_TSQE_TYPE_TSR 128 
 int /*<<< orphan*/  FUNC1 (char*,struct tsq_entry*,...) ; 
 int /*<<< orphan*/  VCF_IDLE ; 
 size_t FUNC2 (struct idt77252_dev*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tsq_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct idt77252_dev*,struct vc_map*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct idt77252_dev *card)
{
	struct tsq_entry *tsqe;
	unsigned int vpi, vci;
	struct vc_map *vc;
	u32 conn, stat;

	if (card->tsq.next == card->tsq.last)
		tsqe = card->tsq.base;
	else
		tsqe = card->tsq.next + 1;

	FUNC1("idt77252_tx: tsq  %p: base %p, next %p, last %p\n", tsqe,
		 card->tsq.base, card->tsq.next, card->tsq.last);
	FUNC1("idt77252_tx: tsqb %08x, tsqt %08x, tsqh %08x, \n",
		 FUNC8(SAR_REG_TSQB),
		 FUNC8(SAR_REG_TSQT),
		 FUNC8(SAR_REG_TSQH));

	stat = FUNC6(tsqe->word_2);

	if (stat & SAR_TSQE_INVALID)
		return;

	do {
		FUNC1("tsqe: 0x%p [0x%08x 0x%08x]\n", tsqe,
			 FUNC6(tsqe->word_1),
			 FUNC6(tsqe->word_2));

		switch (stat & SAR_TSQE_TYPE) {
		case SAR_TSQE_TYPE_TIMER:
			FUNC1("%s: Timer RollOver detected.\n", card->name);
			break;

		case SAR_TSQE_TYPE_IDLE:

			conn = FUNC6(tsqe->word_1);

			if (FUNC0(stat) == 0x10) {
#ifdef	NOTDEF
				printk("%s: Connection %d halted.\n",
				       card->name,
				       le32_to_cpu(tsqe->word_1) & 0x1fff);
#endif
				break;
			}

			vc = card->vcs[conn & 0x1fff];
			if (!vc) {
				FUNC7("%s: could not find VC from conn %d\n",
				       card->name, conn & 0x1fff);
				break;
			}

			FUNC7("%s: Connection %d IDLE.\n",
			       card->name, vc->index);

			FUNC9(VCF_IDLE, &vc->flags);
			break;

		case SAR_TSQE_TYPE_TSR:

			conn = FUNC6(tsqe->word_1);

			vc = card->vcs[conn & 0x1fff];
			if (!vc) {
				FUNC7("%s: no VC at index %d\n",
				       card->name,
				       FUNC6(tsqe->word_1) & 0x1fff);
				break;
			}

			FUNC5(card, vc);
			break;

		case SAR_TSQE_TYPE_TBD_COMP:

			conn = FUNC6(tsqe->word_1);

			vpi = (conn >> SAR_TBD_VPI_SHIFT) & 0x00ff;
			vci = (conn >> SAR_TBD_VCI_SHIFT) & 0xffff;

			if (vpi >= (1 << card->vpibits) ||
			    vci >= (1 << card->vcibits)) {
				FUNC7("%s: TBD complete: "
				       "out of range VPI.VCI %u.%u\n",
				       card->name, vpi, vci);
				break;
			}

			vc = card->vcs[FUNC2(card, vpi, vci)];
			if (!vc) {
				FUNC7("%s: TBD complete: "
				       "no VC at VPI.VCI %u.%u\n",
				       card->name, vpi, vci);
				break;
			}

			FUNC5(card, vc);
			break;
		}

		tsqe->word_2 = FUNC4(SAR_TSQE_INVALID);

		card->tsq.next = tsqe;
		if (card->tsq.next == card->tsq.last)
			tsqe = card->tsq.base;
		else
			tsqe = card->tsq.next + 1;

		FUNC1("tsqe: %p: base %p, next %p, last %p\n", tsqe,
			 card->tsq.base, card->tsq.next, card->tsq.last);

		stat = FUNC6(tsqe->word_2);

	} while (!(stat & SAR_TSQE_INVALID));

	FUNC10((unsigned long)card->tsq.next - (unsigned long)card->tsq.base,
	       SAR_REG_TSQH);

	FUNC3("idt77252_tx-after writel%d: TSQ head = 0x%x, tail = 0x%x, next = 0x%p.\n",
		card->index, FUNC8(SAR_REG_TSQH),
		FUNC8(SAR_REG_TSQT), card->tsq.next);
}