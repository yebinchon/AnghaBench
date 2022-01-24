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
typedef  int u32 ;
struct TYPE_2__ {unsigned long max_ddbs; } ;
struct asd_ha_struct {TYPE_1__ hw_prof; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 unsigned long ASD_DDB_SIZE ; 
 int /*<<< orphan*/  CTXDOMAIN ; 
 int /*<<< orphan*/  DEVCTXBASE ; 
 scalar_t__ MAX_DEVS ; 
 unsigned long OCM_BASE_ADDR ; 
 int FUNC0 (struct asd_ha_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct asd_ha_struct*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct asd_ha_struct*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct asd_ha_struct *asd_ha)
{
	unsigned long dma_addr = OCM_BASE_ADDR;
	u32 d;

	dma_addr -= asd_ha->hw_prof.max_ddbs * ASD_DDB_SIZE;
	FUNC1(asd_ha, DEVCTXBASE, (dma_addr_t) dma_addr);
	d = FUNC0(asd_ha, CTXDOMAIN);
	d |= 4;
	FUNC2(asd_ha, CTXDOMAIN, d);
	asd_ha->hw_prof.max_ddbs += MAX_DEVS;
}