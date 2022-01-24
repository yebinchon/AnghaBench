#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint ;
typedef  int u_char ;
struct TYPE_8__ {scalar_t__ status; scalar_t__ count; scalar_t__ num; scalar_t__ row; } ;
struct TYPE_7__ {scalar_t__ pgnum; } ;
struct TYPE_6__ {int* byte; int /*<<< orphan*/ * word; } ;
struct TYPE_5__ {scalar_t__ cle; scalar_t__ ale; int /*<<< orphan*/  ce; } ;
struct nandsim {int state; int busw; int* ids; int options; int nxstate; TYPE_4__ regs; TYPE_3__ geom; TYPE_2__ buf; TYPE_1__ lines; } ;
struct nand_chip {scalar_t__ priv; } ;
struct mtd_info {scalar_t__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_CPY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int OPT_AUTOINCR ; 
#define  STATE_DATAOUT 129 
#define  STATE_DATAOUT_ID 128 
 int STATE_DATAOUT_MASK ; 
 scalar_t__ STATE_DATAOUT_STATUS ; 
 scalar_t__ STATE_READY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nandsim*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct nandsim*) ; 

__attribute__((used)) static u_char FUNC9(struct mtd_info *mtd)
{
        struct nandsim *ns = (struct nandsim *)((struct nand_chip *)mtd->priv)->priv;
	u_char outb = 0x00;

	/* Sanity and correctness checks */
	if (!ns->lines.ce) {
		FUNC2("read_byte: chip is disabled, return %#x\n", (uint)outb);
		return outb;
	}
	if (ns->lines.ale || ns->lines.cle) {
		FUNC2("read_byte: ALE or CLE pin is high, return %#x\n", (uint)outb);
		return outb;
	}
	if (!(ns->state & STATE_DATAOUT_MASK)) {
		FUNC4("read_byte: unexpected data output cycle, state is %s "
			"return %#x\n", FUNC7(ns->state), (uint)outb);
		return outb;
	}

	/* Status register may be read as many times as it is wanted */
	if (FUNC3(ns->state) == STATE_DATAOUT_STATUS) {
		FUNC1("read_byte: return %#x status\n", ns->regs.status);
		return ns->regs.status;
	}

	/* Check if there is any data in the internal buffer which may be read */
	if (ns->regs.count == ns->regs.num) {
		FUNC4("read_byte: no more data to output, return %#x\n", (uint)outb);
		return outb;
	}

	switch (FUNC3(ns->state)) {
		case STATE_DATAOUT:
			if (ns->busw == 8) {
				outb = ns->buf.byte[ns->regs.count];
				ns->regs.count += 1;
			} else {
				outb = (u_char)FUNC5(ns->buf.word[ns->regs.count >> 1]);
				ns->regs.count += 2;
			}
			break;
		case STATE_DATAOUT_ID:
			FUNC1("read_byte: read ID byte %d, total = %d\n", ns->regs.count, ns->regs.num);
			outb = ns->ids[ns->regs.count];
			ns->regs.count += 1;
			break;
		default:
			FUNC0();
	}

	if (ns->regs.count == ns->regs.num) {
		FUNC1("read_byte: all bytes were read\n");

		/*
		 * The OPT_AUTOINCR allows to read next conseqitive pages without
		 * new read operation cycle.
		 */
		if ((ns->options & OPT_AUTOINCR) && FUNC3(ns->state) == STATE_DATAOUT) {
			ns->regs.count = 0;
			if (ns->regs.row + 1 < ns->geom.pgnum)
				ns->regs.row += 1;
			FUNC1("read_byte: switch to the next page (%#x)\n", ns->regs.row);
			FUNC6(ns, ACTION_CPY);
		}
		else if (FUNC3(ns->nxstate) == STATE_READY)
			FUNC8(ns);

	}

	return outb;
}