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
struct ti_ohci {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct ti_ohci*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ti_ohci*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(struct ti_ohci *ohci, int reg, char *msg)
{
	int i=0;

	/* stop the channel program if it's still running */
	FUNC3(ohci, reg, 0x8000);

	/* Wait until it effectively stops */
	while (FUNC2(ohci, reg) & 0x400) {
		i++;
		if (i>5000) {
			FUNC0(KERN_ERR,
			      "Runaway loop while stopping context: %s...", msg ? msg : "");
			return 1;
		}

		FUNC1();
		FUNC4(10);
	}
	if (msg) FUNC0(KERN_ERR, "%s: dma prg stopped", msg);
	return 0;
}