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
struct clk {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  MXC_CRMAP_AMLPMRE1 ; 
 int MXC_CRMAP_AMLPMRE1_MLPME4_OFFSET ; 
 int MXC_CRMAP_AMLPMRE1_MLPME5_OFFSET ; 
 int /*<<< orphan*/  MXC_CRMAP_APRB ; 
 int MXC_CRMAP_APRB_SDHC1EN_OFFSET ; 
 int MXC_CRMAP_APRB_SDHC2EN_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct clk *clk)
{
	u32 amlpmre1, aprb;

	amlpmre1 = FUNC0(MXC_CRMAP_AMLPMRE1);
	aprb = FUNC0(MXC_CRMAP_APRB);
	switch (clk->id) {
	case 0:
		amlpmre1 |= (0x7 << MXC_CRMAP_AMLPMRE1_MLPME4_OFFSET);
		aprb |= (0x1 << MXC_CRMAP_APRB_SDHC1EN_OFFSET);
		break;
	case 1:
		amlpmre1 |= (0x7 << MXC_CRMAP_AMLPMRE1_MLPME5_OFFSET);
		aprb |= (0x1 << MXC_CRMAP_APRB_SDHC2EN_OFFSET);
		break;
	}
	FUNC1(amlpmre1, MXC_CRMAP_AMLPMRE1);
	FUNC1(aprb, MXC_CRMAP_APRB);
	return 0;
}