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
struct mpsc_port_info {scalar_t__ rcv_data; TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  SDMA_SDCM_ERD ; 
 int /*<<< orphan*/  FUNC0 (struct mpsc_port_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct mpsc_port_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mpsc_port_info *pi)
{
	FUNC2("mpsc_start_rx[%d]: Starting...\n", pi->port.line);

	if (pi->rcv_data) {
		FUNC0(pi);
		FUNC1(pi, SDMA_SDCM_ERD);
	}
}