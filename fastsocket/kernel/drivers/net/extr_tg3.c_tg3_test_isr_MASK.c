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
struct tg3_napi {struct tg3_hw_status* hw_status; struct tg3* tp; } ;
struct tg3_hw_status {int status; } ;
struct tg3 {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PCISTATE_INT_NOT_ACTIVE ; 
 int SD_STATUS_UPDATED ; 
 int /*<<< orphan*/  TG3PCI_PCISTATE ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct tg3_napi *tnapi = dev_id;
	struct tg3 *tp = tnapi->tp;
	struct tg3_hw_status *sblk = tnapi->hw_status;

	if ((sblk->status & SD_STATUS_UPDATED) ||
	    !(FUNC2(TG3PCI_PCISTATE) & PCISTATE_INT_NOT_ACTIVE)) {
		FUNC1(tp);
		return FUNC0(1);
	}
	return FUNC0(0);
}