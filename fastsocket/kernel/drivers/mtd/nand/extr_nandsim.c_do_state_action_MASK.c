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
typedef  int uint32_t ;
struct TYPE_6__ {scalar_t__ pgnum; int pgszoob; int pgsz; unsigned int pgsec; int pgaddrbytes; int secaddrbytes; unsigned int secshift; unsigned int pgshift; int /*<<< orphan*/  secsz; } ;
struct TYPE_5__ {scalar_t__ row; int column; int off; int count; } ;
struct TYPE_4__ {int /*<<< orphan*/  wp; } ;
struct nandsim {int busw; int options; TYPE_3__ geom; TYPE_2__ regs; TYPE_1__ lines; } ;

/* Variables and functions */
#define  ACTION_CPY 133 
#define  ACTION_HALFOFF 132 
 int ACTION_MASK ; 
#define  ACTION_OOBOFF 131 
#define  ACTION_PRGPAGE 130 
#define  ACTION_SECERASE 129 
#define  ACTION_ZEROOFF 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nandsim*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int OPT_PAGE512_8BIT ; 
 int access_delay ; 
 int /*<<< orphan*/  erase_block_wear ; 
 int /*<<< orphan*/  erase_delay ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct nandsim*) ; 
 int input_cycle ; 
 int output_cycle ; 
 int FUNC9 (struct nandsim*,int) ; 
 int programm_delay ; 
 int /*<<< orphan*/  FUNC10 (struct nandsim*,int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned int) ; 

__attribute__((used)) static int FUNC13(struct nandsim *ns, uint32_t action)
{
	int num;
	int busdiv = ns->busw == 8 ? 1 : 2;
	unsigned int erase_block_no, page_no;

	action &= ACTION_MASK;

	/* Check that page address input is correct */
	if (action != ACTION_SECERASE && ns->regs.row >= ns->geom.pgnum) {
		FUNC6("do_state_action: wrong page number (%#x)\n", ns->regs.row);
		return -1;
	}

	switch (action) {

	case ACTION_CPY:
		/*
		 * Copy page data to the internal buffer.
		 */

		/* Column shouldn't be very large */
		if (ns->regs.column >= (ns->geom.pgszoob - ns->regs.off)) {
			FUNC1("do_state_action: column number is too large\n");
			break;
		}
		num = ns->geom.pgszoob - ns->regs.off - ns->regs.column;
		FUNC10(ns, num);

		FUNC0("do_state_action: (ACTION_CPY:) copy %d bytes to int buf, raw offset %d\n",
			num, FUNC4(ns) + ns->regs.off);

		if (ns->regs.off == 0)
			FUNC2("read page %d\n", ns->regs.row);
		else if (ns->regs.off < ns->geom.pgsz)
			FUNC2("read page %d (second half)\n", ns->regs.row);
		else
			FUNC2("read OOB of page %d\n", ns->regs.row);

		FUNC5(access_delay);
		FUNC5(input_cycle * ns->geom.pgsz / 1000 / busdiv);

		break;

	case ACTION_SECERASE:
		/*
		 * Erase sector.
		 */

		if (ns->lines.wp) {
			FUNC1("do_state_action: device is write-protected, ignore sector erase\n");
			return -1;
		}

		if (ns->regs.row >= ns->geom.pgnum - ns->geom.pgsec
			|| (ns->regs.row & ~(ns->geom.secsz - 1))) {
			FUNC1("do_state_action: wrong sector address (%#x)\n", ns->regs.row);
			return -1;
		}

		ns->regs.row = (ns->regs.row <<
				8 * (ns->geom.pgaddrbytes - ns->geom.secaddrbytes)) | ns->regs.column;
		ns->regs.column = 0;

		erase_block_no = ns->regs.row >> (ns->geom.secshift - ns->geom.pgshift);

		FUNC0("do_state_action: erase sector at address %#x, off = %d\n",
				ns->regs.row, FUNC4(ns));
		FUNC2("erase sector %u\n", erase_block_no);

		FUNC8(ns);

		FUNC3(erase_delay);

		if (erase_block_wear)
			FUNC11(erase_block_no);

		if (FUNC7(erase_block_no)) {
			FUNC6("simulating erase failure in erase block %u\n", erase_block_no);
			return -1;
		}

		break;

	case ACTION_PRGPAGE:
		/*
		 * Programm page - move internal buffer data to the page.
		 */

		if (ns->lines.wp) {
			FUNC6("do_state_action: device is write-protected, programm\n");
			return -1;
		}

		num = ns->geom.pgszoob - ns->regs.off - ns->regs.column;
		if (num != ns->regs.count) {
			FUNC1("do_state_action: too few bytes were input (%d instead of %d)\n",
					ns->regs.count, num);
			return -1;
		}

		if (FUNC9(ns, num) == -1)
			return -1;

		page_no = ns->regs.row;

		FUNC0("do_state_action: copy %d bytes from int buf to (%#x, %#x), raw off = %d\n",
			num, ns->regs.row, ns->regs.column, FUNC4(ns) + ns->regs.off);
		FUNC2("programm page %d\n", ns->regs.row);

		FUNC5(programm_delay);
		FUNC5(output_cycle * ns->geom.pgsz / 1000 / busdiv);

		if (FUNC12(page_no)) {
			FUNC6("simulating write failure in page %u\n", page_no);
			return -1;
		}

		break;

	case ACTION_ZEROOFF:
		FUNC0("do_state_action: set internal offset to 0\n");
		ns->regs.off = 0;
		break;

	case ACTION_HALFOFF:
		if (!(ns->options & OPT_PAGE512_8BIT)) {
			FUNC1("do_state_action: BUG! can't skip half of page for non-512"
				"byte page size 8x chips\n");
			return -1;
		}
		FUNC0("do_state_action: set internal offset to %d\n", ns->geom.pgsz/2);
		ns->regs.off = ns->geom.pgsz/2;
		break;

	case ACTION_OOBOFF:
		FUNC0("do_state_action: set internal offset to %d\n", ns->geom.pgsz);
		ns->regs.off = ns->geom.pgsz;
		break;

	default:
		FUNC0("do_state_action: BUG! unknown action\n");
	}

	return 0;
}