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
struct TYPE_2__ {void* data; void* addr; } ;
union cvmx_pescx_cfg_wr {scalar_t__ u64; TYPE_1__ s; } ;
typedef  void* uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(int pcie_port, uint32_t cfg_offset,
				 uint32_t val)
{
	union cvmx_pescx_cfg_wr pescx_cfg_wr;
	pescx_cfg_wr.u64 = 0;
	pescx_cfg_wr.s.addr = cfg_offset;
	pescx_cfg_wr.s.data = val;
	FUNC1(FUNC0(pcie_port), pescx_cfg_wr.u64);
}