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
struct TYPE_4__ {int /*<<< orphan*/  queue; } ;
struct TYPE_3__ {TYPE_2__ rx_pool; } ;
struct vc_map {unsigned long index; TYPE_1__ rcv; } ;
struct idt77252_dev {int vpibits; unsigned long rct_base; int /*<<< orphan*/  name; int /*<<< orphan*/  cmd_lock; struct vc_map** vcs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 unsigned long SAR_CMD_CLOSE_CONNECTION ; 
 int /*<<< orphan*/  SAR_REG_CMD ; 
 unsigned long SAR_SRAM_RCT_SIZE ; 
 int FUNC1 (struct idt77252_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct idt77252_dev*,TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct idt77252_dev*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(struct idt77252_dev *card)
{
	unsigned long flags;
	unsigned long addr;
	struct vc_map *vc;
	int vpi, vci;
	int index;

	for (vpi = 0; vpi < (1 << card->vpibits); vpi++) {
		for (vci = 3; vci < 5; vci++) {
			index = FUNC1(card, vpi, vci);
			vc = card->vcs[index];

			addr = card->rct_base + vc->index * SAR_SRAM_RCT_SIZE;

			FUNC4(&card->cmd_lock, flags);
			FUNC7(SAR_CMD_CLOSE_CONNECTION | (addr << 2),
			       SAR_REG_CMD);
			FUNC6(card);
			FUNC5(&card->cmd_lock, flags);

			if (FUNC3(&vc->rcv.rx_pool.queue) != 0) {
				FUNC0("%s: closing a VC "
					"with pending rx buffers.\n",
					card->name);

				FUNC2(card, &vc->rcv.rx_pool);
			}
		}
	}
}