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
typedef  int u32 ;
struct mpsc_port_info {scalar_t__ sdma_base; } ;

/* Variables and functions */
 scalar_t__ SDMA_SDCM ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mpsc_port_info *pi, u32 val)
{
	u32	v;

	v = FUNC0(pi->sdma_base + SDMA_SDCM);
	if (val)
		v |= val;
	else
		v = 0;
	FUNC1();
	FUNC2(v, pi->sdma_base + SDMA_SDCM);
	FUNC1();
}