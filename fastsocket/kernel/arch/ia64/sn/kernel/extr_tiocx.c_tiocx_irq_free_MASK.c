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
typedef  int /*<<< orphan*/  u64 ;
struct sn_irq_info {int /*<<< orphan*/  irq_bridge; } ;
typedef  int nasid_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sn_irq_info*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,struct sn_irq_info*) ; 

void FUNC4(struct sn_irq_info *sn_irq_info)
{
	u64 bridge = (u64) sn_irq_info->irq_bridge;
	nasid_t nasid = FUNC0(bridge);
	int widget;

	if (nasid & 1) {
		widget = FUNC1(bridge);
		FUNC3(nasid, widget, sn_irq_info);
		FUNC2(sn_irq_info);
	}
}