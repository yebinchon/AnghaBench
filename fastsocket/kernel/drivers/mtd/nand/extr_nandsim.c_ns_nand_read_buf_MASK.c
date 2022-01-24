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
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_8__ {scalar_t__ count; scalar_t__ num; scalar_t__ row; } ;
struct TYPE_7__ {scalar_t__ pgnum; } ;
struct TYPE_6__ {scalar_t__ byte; } ;
struct TYPE_5__ {scalar_t__ cle; scalar_t__ ale; int /*<<< orphan*/  ce; } ;
struct nandsim {int state; int options; int nxstate; TYPE_4__ regs; TYPE_3__ geom; TYPE_2__ buf; TYPE_1__ lines; } ;
struct nand_chip {int /*<<< orphan*/  (* read_byte ) (struct mtd_info*) ;scalar_t__ priv; } ;
struct mtd_info {scalar_t__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACTION_CPY ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct nandsim*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int OPT_AUTOINCR ; 
 scalar_t__ STATE_DATAOUT ; 
 int STATE_DATAOUT_MASK ; 
 scalar_t__ STATE_READY ; 
 int /*<<< orphan*/  FUNC5 (struct nandsim*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct nandsim*) ; 
 int /*<<< orphan*/  FUNC10 (struct nandsim*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct mtd_info *mtd, u_char *buf, int len)
{
        struct nandsim *ns = (struct nandsim *)((struct nand_chip *)mtd->priv)->priv;

	/* Sanity and correctness checks */
	if (!ns->lines.ce) {
		FUNC1("read_buf: chip is disabled\n");
		return;
	}
	if (ns->lines.ale || ns->lines.cle) {
		FUNC1("read_buf: ALE or CLE pin is high\n");
		return;
	}
	if (!(ns->state & STATE_DATAOUT_MASK)) {
		FUNC4("read_buf: unexpected data output cycle, current state is %s\n",
			FUNC6(ns->state));
		return;
	}

	if (FUNC2(ns->state) != STATE_DATAOUT) {
		int i;

		for (i = 0; i < len; i++)
			buf[i] = ((struct nand_chip *)mtd->priv)->read_byte(mtd);

		return;
	}

	/* Check if these are expected bytes */
	if (ns->regs.count + len > ns->regs.num) {
		FUNC1("read_buf: too many bytes to read\n");
		FUNC10(ns, FUNC3(ns));
		return;
	}

	FUNC7(buf, ns->buf.byte + ns->regs.count, len);
	ns->regs.count += len;

	if (ns->regs.count == ns->regs.num) {
		if ((ns->options & OPT_AUTOINCR) && FUNC2(ns->state) == STATE_DATAOUT) {
			ns->regs.count = 0;
			if (ns->regs.row + 1 < ns->geom.pgnum)
				ns->regs.row += 1;
			FUNC0("read_buf: switch to the next page (%#x)\n", ns->regs.row);
			FUNC5(ns, ACTION_CPY);
		}
		else if (FUNC2(ns->nxstate) == STATE_READY)
			FUNC9(ns);
	}

	return;
}