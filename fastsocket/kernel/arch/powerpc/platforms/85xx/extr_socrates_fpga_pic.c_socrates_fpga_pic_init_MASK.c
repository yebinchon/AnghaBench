#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HOST_MAP_LINEAR ; 
 scalar_t__ NO_IRQ ; 
 int SOCRATES_FPGA_IRQ_MASK ; 
 int /*<<< orphan*/  SOCRATES_FPGA_NUM_IRQS ; 
 int /*<<< orphan*/ * FUNC1 (struct device_node*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device_node*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__* socrates_fpga_irqs ; 
 int /*<<< orphan*/  socrates_fpga_pic_cascade ; 
 int /*<<< orphan*/  socrates_fpga_pic_host_ops ; 
 int /*<<< orphan*/  socrates_fpga_pic_iobase ; 
 int /*<<< orphan*/ * socrates_fpga_pic_irq_host ; 
 int /*<<< orphan*/  socrates_fpga_pic_lock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC11(struct device_node *pic)
{
	unsigned long flags;
	int i;

	/* Setup an irq_host structure */
	socrates_fpga_pic_irq_host = FUNC1(pic, IRQ_HOST_MAP_LINEAR,
			SOCRATES_FPGA_NUM_IRQS,	&socrates_fpga_pic_host_ops,
			SOCRATES_FPGA_NUM_IRQS);
	if (socrates_fpga_pic_irq_host == NULL) {
		FUNC4("FPGA PIC: Unable to allocate host\n");
		return;
	}

	for (i = 0; i < 3; i++) {
		socrates_fpga_irqs[i] = FUNC2(pic, i);
		if (socrates_fpga_irqs[i] == NO_IRQ) {
			FUNC6("FPGA PIC: can't get irq%d.\n", i);
			continue;
		}
		FUNC7(socrates_fpga_irqs[i],
				socrates_fpga_pic_cascade);
	}

	socrates_fpga_pic_iobase = FUNC3(pic, 0);

	FUNC9(&socrates_fpga_pic_lock, flags);
	FUNC8(FUNC0(0),
			SOCRATES_FPGA_IRQ_MASK << 16);
	FUNC8(FUNC0(1),
			SOCRATES_FPGA_IRQ_MASK << 16);
	FUNC8(FUNC0(2),
			SOCRATES_FPGA_IRQ_MASK << 16);
	FUNC10(&socrates_fpga_pic_lock, flags);

	FUNC5("FPGA PIC: Setting up Socrates FPGA PIC\n");
}