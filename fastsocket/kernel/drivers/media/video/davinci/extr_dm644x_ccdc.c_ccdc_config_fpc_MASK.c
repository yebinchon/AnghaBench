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
struct ccdc_fault_pixel {int fpc_table_addr; int fp_num; int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCDC_FPC ; 
 int /*<<< orphan*/  CCDC_FPC_ADDR ; 
 int CCDC_FPC_DISABLE ; 
 int CCDC_FPC_ENABLE ; 
 int CCDC_FPC_FPC_NUM_MASK ; 
 int /*<<< orphan*/  dev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ccdc_fault_pixel *fpc)
{
	u32 val;

	/* Initially disable FPC */
	val = CCDC_FPC_DISABLE;
	FUNC2(val, CCDC_FPC);

	if (!fpc->enable)
		return;

	/* Configure Fault pixel if needed */
	FUNC2(fpc->fpc_table_addr, CCDC_FPC_ADDR);
	FUNC0(dev, "\nWriting 0x%x to FPC_ADDR...\n",
		       (fpc->fpc_table_addr));
	/* Write the FPC params with FPC disable */
	val = fpc->fp_num & CCDC_FPC_FPC_NUM_MASK;
	FUNC2(val, CCDC_FPC);

	FUNC0(dev, "\nWriting 0x%x to FPC...\n", val);
	/* read the FPC register */
	val = FUNC1(CCDC_FPC) | CCDC_FPC_ENABLE;
	FUNC2(val, CCDC_FPC);
	FUNC0(dev, "\nWriting 0x%x to FPC...\n", val);
}