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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  line; } ;
struct mpsc_port_info {scalar_t__ sdma_base; TYPE_1__ port; } ;

/* Variables and functions */
 scalar_t__ SDMA_SDC ; 
 int /*<<< orphan*/  FUNC0 (struct mpsc_port_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct mpsc_port_info *pi, u32 burst_size)
{
	FUNC1("mpsc_sdma_init[%d]: burst_size: %d\n", pi->port.line,
		burst_size);

	FUNC3((FUNC2(pi->sdma_base + SDMA_SDC) & 0x3ff) | 0x03f,
		pi->sdma_base + SDMA_SDC);
	FUNC0(pi, burst_size);
}