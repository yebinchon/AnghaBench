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
struct TYPE_2__ {int /*<<< orphan*/  line; } ;
struct mpsc_port_info {TYPE_1__ port; } ;

/* Variables and functions */
 int SDMA_SDCM_AR ; 
 int SDMA_SDCM_AT ; 
 int /*<<< orphan*/  FUNC0 (struct mpsc_port_info*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mpsc_port_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct mpsc_port_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mpsc_port_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mpsc_port_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct mpsc_port_info *pi)
{
	FUNC5("mpsc_sdma_stop[%d]: Stopping SDMA\n", pi->port.line);

	/* Abort any SDMA transfers */
	FUNC0(pi, 0);
	FUNC0(pi, SDMA_SDCM_AR | SDMA_SDCM_AT);

	/* Clear the SDMA current and first TX and RX pointers */
	FUNC4(pi, NULL);
	FUNC3(pi, NULL);

	/* Disable interrupts */
	FUNC2(pi, 0xf);
	FUNC1(pi);
}