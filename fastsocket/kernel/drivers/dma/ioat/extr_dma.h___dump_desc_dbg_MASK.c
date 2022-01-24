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
struct TYPE_2__ {int /*<<< orphan*/  compl_write; int /*<<< orphan*/  int_en; int /*<<< orphan*/  op; } ;
struct ioat_dma_descriptor {TYPE_1__ ctl_f; int /*<<< orphan*/  ctl; scalar_t__ next; } ;
struct ioat_chan_common {int dummy; } ;
struct dma_async_tx_descriptor {int /*<<< orphan*/  flags; int /*<<< orphan*/  cookie; scalar_t__ phys; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,unsigned long long,unsigned long long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device* FUNC1 (struct ioat_chan_common*) ; 

__attribute__((used)) static inline void
FUNC2(struct ioat_chan_common *chan, struct ioat_dma_descriptor *hw,
		struct dma_async_tx_descriptor *tx, int id)
{
	struct device *dev = FUNC1(chan);

	FUNC0(dev, "desc[%d]: (%#llx->%#llx) cookie: %d flags: %#x"
		" ctl: %#x (op: %d int_en: %d compl: %d)\n", id,
		(unsigned long long) tx->phys,
		(unsigned long long) hw->next, tx->cookie, tx->flags,
		hw->ctl, hw->ctl_f.op, hw->ctl_f.int_en, hw->ctl_f.compl_write);
}