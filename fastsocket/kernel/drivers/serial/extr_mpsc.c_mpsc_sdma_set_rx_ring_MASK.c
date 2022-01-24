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
struct mpsc_rx_desc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  line; } ;
struct mpsc_port_info {scalar_t__ sdma_base; TYPE_1__ port; } ;

/* Variables and functions */
 scalar_t__ SDMA_SCRDP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct mpsc_port_info *pi,
		struct mpsc_rx_desc *rxre_p)
{
	FUNC0("mpsc_sdma_set_rx_ring[%d]: rxre_p: 0x%x\n",
		pi->port.line, (u32)rxre_p);

	FUNC1((u32)rxre_p, pi->sdma_base + SDMA_SCRDP);
}