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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct asd_ha_struct {struct asd_ha_addrspace* io_handle; } ;
struct asd_ha_addrspace {int swa_base; int swb_base; int swc_base; } ;

/* Variables and functions */
 int ALL_BASE_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MBAR0_SWA_SIZE ; 
 int MBAR0_SWB_SIZE ; 
 int MBAR0_SWC_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct asd_ha_struct*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct asd_ha_struct*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct asd_ha_struct*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct asd_ha_struct*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct asd_ha_struct *asd_ha, u32 reg, u8 val)
{
	struct asd_ha_addrspace *io_handle=&asd_ha->io_handle[0];
	FUNC0(reg >= 0xC0000000 || reg < ALL_BASE_ADDR);
	if (io_handle->swa_base <= reg
	    && reg < io_handle->swa_base + MBAR0_SWA_SIZE)
		FUNC2 (asd_ha, reg,val);
	else if (io_handle->swb_base <= reg
		 && reg < io_handle->swb_base + MBAR0_SWB_SIZE)
		FUNC3 (asd_ha, reg, val);
	else if (io_handle->swc_base <= reg
		 && reg < io_handle->swc_base + MBAR0_SWC_SIZE)
		FUNC4 (asd_ha, reg, val);
	else {
		/* Ok, we have to move SWB */
		FUNC1(asd_ha, reg);
		FUNC3 (asd_ha, reg, val);
	}
}