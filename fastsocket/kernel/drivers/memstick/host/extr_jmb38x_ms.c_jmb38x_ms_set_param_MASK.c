#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct memstick_host {int dummy; } ;
struct jmb38x_ms_host {TYPE_1__* chip; scalar_t__ addr; int /*<<< orphan*/  id; } ;
typedef  enum memstick_param { ____Placeholder_memstick_param } memstick_param ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {TYPE_2__* pdev; } ;

/* Variables and functions */
 scalar_t__ CLOCK_CONTROL ; 
 unsigned int CLOCK_CONTROL_40MHZ ; 
 unsigned int CLOCK_CONTROL_50MHZ ; 
 int EINVAL ; 
 scalar_t__ HOST_CONTROL ; 
 unsigned int HOST_CONTROL_CLOCK_EN ; 
 unsigned int HOST_CONTROL_FAST_CLK ; 
 unsigned int HOST_CONTROL_HW_OC_P ; 
 int HOST_CONTROL_IF_PAR4 ; 
 int HOST_CONTROL_IF_PAR8 ; 
 int HOST_CONTROL_IF_SERIAL ; 
 int HOST_CONTROL_IF_SHIFT ; 
 unsigned int HOST_CONTROL_POWER_EN ; 
 unsigned int HOST_CONTROL_REI ; 
 unsigned int HOST_CONTROL_REO ; 
 unsigned int HOST_CONTROL_TDELAY_EN ; 
#define  MEMSTICK_INTERFACE 129 
 int MEMSTICK_PAR4 ; 
 int MEMSTICK_PAR8 ; 
#define  MEMSTICK_POWER 128 
 int MEMSTICK_POWER_OFF ; 
 int MEMSTICK_POWER_ON ; 
 int MEMSTICK_SERIAL ; 
 scalar_t__ PAD_OUTPUT_ENABLE ; 
 unsigned int PAD_OUTPUT_ENABLE_MS ; 
 scalar_t__ PAD_PU_PD ; 
 unsigned int PAD_PU_PD_OFF ; 
 unsigned int PAD_PU_PD_ON_MS_SOCK0 ; 
 unsigned int PAD_PU_PD_ON_MS_SOCK1 ; 
 int /*<<< orphan*/  PCI_CTL_CLOCK_DLY_ADDR ; 
 unsigned int PCI_CTL_CLOCK_DLY_MASK_A ; 
 unsigned int PCI_CTL_CLOCK_DLY_MASK_B ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct jmb38x_ms_host*) ; 
 struct jmb38x_ms_host* FUNC2 (struct memstick_host*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC8(struct memstick_host *msh,
			       enum memstick_param param,
			       int value)
{
	struct jmb38x_ms_host *host = FUNC2(msh);
	unsigned int host_ctl = FUNC6(host->addr + HOST_CONTROL);
	unsigned int clock_ctl = CLOCK_CONTROL_40MHZ, clock_delay = 0;
	int rc = 0;

	switch (param) {
	case MEMSTICK_POWER:
		if (value == MEMSTICK_POWER_ON) {
			rc = FUNC1(host);
			if (rc)
				return rc;

			host_ctl = 7;
			host_ctl |= HOST_CONTROL_POWER_EN
				    | HOST_CONTROL_CLOCK_EN
				    | HOST_CONTROL_HW_OC_P
				    | HOST_CONTROL_TDELAY_EN;
			FUNC7(host_ctl, host->addr + HOST_CONTROL);

			FUNC7(host->id ? PAD_PU_PD_ON_MS_SOCK1
					: PAD_PU_PD_ON_MS_SOCK0,
			       host->addr + PAD_PU_PD);

			FUNC7(PAD_OUTPUT_ENABLE_MS,
			       host->addr + PAD_OUTPUT_ENABLE);

			FUNC3(10);
			FUNC0(&host->chip->pdev->dev, "power on\n");
		} else if (value == MEMSTICK_POWER_OFF) {
			host_ctl &= ~(HOST_CONTROL_POWER_EN
				      | HOST_CONTROL_CLOCK_EN);
			FUNC7(host_ctl, host->addr +  HOST_CONTROL);
			FUNC7(0, host->addr + PAD_OUTPUT_ENABLE);
			FUNC7(PAD_PU_PD_OFF, host->addr + PAD_PU_PD);
			FUNC0(&host->chip->pdev->dev, "power off\n");
		} else
			return -EINVAL;
		break;
	case MEMSTICK_INTERFACE:
		host_ctl &= ~(3 << HOST_CONTROL_IF_SHIFT);
		FUNC4(host->chip->pdev,
				      PCI_CTL_CLOCK_DLY_ADDR,
				      &clock_delay);
		clock_delay &= host->id ? ~PCI_CTL_CLOCK_DLY_MASK_B
					: ~PCI_CTL_CLOCK_DLY_MASK_A;

		if (value == MEMSTICK_SERIAL) {
			host_ctl &= ~HOST_CONTROL_FAST_CLK;
			host_ctl &= ~HOST_CONTROL_REO;
			host_ctl |= HOST_CONTROL_IF_SERIAL
				    << HOST_CONTROL_IF_SHIFT;
			host_ctl |= HOST_CONTROL_REI;
			clock_ctl = CLOCK_CONTROL_40MHZ;
		} else if (value == MEMSTICK_PAR4) {
			host_ctl |= HOST_CONTROL_FAST_CLK | HOST_CONTROL_REO;
			host_ctl |= HOST_CONTROL_IF_PAR4
				    << HOST_CONTROL_IF_SHIFT;
			host_ctl &= ~HOST_CONTROL_REI;
			clock_ctl = CLOCK_CONTROL_40MHZ;
			clock_delay |= host->id ? (4 << 12) : (4 << 8);
		} else if (value == MEMSTICK_PAR8) {
			host_ctl |= HOST_CONTROL_FAST_CLK;
			host_ctl |= HOST_CONTROL_IF_PAR8
				    << HOST_CONTROL_IF_SHIFT;
			host_ctl &= ~(HOST_CONTROL_REI | HOST_CONTROL_REO);
			clock_ctl = CLOCK_CONTROL_50MHZ;
		} else
			return -EINVAL;

		FUNC7(host_ctl, host->addr + HOST_CONTROL);
		FUNC7(clock_ctl, host->addr + CLOCK_CONTROL);
		FUNC5(host->chip->pdev,
				       PCI_CTL_CLOCK_DLY_ADDR,
				       clock_delay);
		break;
	};
	return 0;
}