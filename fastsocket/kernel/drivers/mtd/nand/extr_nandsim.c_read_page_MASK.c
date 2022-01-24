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
union ns_mem {int /*<<< orphan*/ * byte; } ;
struct TYPE_6__ {int /*<<< orphan*/  byte; } ;
struct TYPE_5__ {size_t row; int column; int off; } ;
struct TYPE_4__ {int pgszoob; } ;
struct nandsim {TYPE_3__ buf; TYPE_2__ regs; scalar_t__ cfile; TYPE_1__ geom; int /*<<< orphan*/ * pages_written; } ;
typedef  int ssize_t ;
typedef  int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,long) ; 
 union ns_mem* FUNC2 (struct nandsim*) ; 
 int /*<<< orphan*/  FUNC3 (struct nandsim*) ; 
 int /*<<< orphan*/  FUNC4 (struct nandsim*,int) ; 
 scalar_t__ FUNC5 (struct nandsim*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (struct nandsim*,scalar_t__,int /*<<< orphan*/ ,int,int*) ; 

__attribute__((used)) static void FUNC9(struct nandsim *ns, int num)
{
	union ns_mem *mypage;

	if (ns->cfile) {
		if (!ns->pages_written[ns->regs.row]) {
			FUNC0("read_page: page %d not written\n", ns->regs.row);
			FUNC7(ns->buf.byte, 0xFF, num);
		} else {
			loff_t pos;
			ssize_t tx;

			FUNC0("read_page: page %d written, reading from %d\n",
				ns->regs.row, ns->regs.column + ns->regs.off);
			if (FUNC5(ns, num))
				return;
			pos = (loff_t)ns->regs.row * ns->geom.pgszoob + ns->regs.column + ns->regs.off;
			tx = FUNC8(ns, ns->cfile, ns->buf.byte, num, &pos);
			if (tx != num) {
				FUNC1("read_page: read error for page %d ret %ld\n", ns->regs.row, (long)tx);
				return;
			}
			FUNC4(ns, num);
		}
		return;
	}

	mypage = FUNC2(ns);
	if (mypage->byte == NULL) {
		FUNC0("read_page: page %d not allocated\n", ns->regs.row);
		FUNC7(ns->buf.byte, 0xFF, num);
	} else {
		FUNC0("read_page: page %d allocated, reading from %d\n",
			ns->regs.row, ns->regs.column + ns->regs.off);
		if (FUNC5(ns, num))
			return;
		FUNC6(ns->buf.byte, FUNC3(ns), num);
		FUNC4(ns, num);
	}
}