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
struct adapter {int swintr; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PFSW ; 
 int /*<<< orphan*/  PL_PF_INT_CAUSE ; 
 int FUNC1 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *cookie)
{
	struct adapter *adap = cookie;

	u32 v = FUNC1(adap, FUNC0(PL_PF_INT_CAUSE));
	if (v & PFSW) {
		adap->swintr = 1;
		FUNC3(adap, FUNC0(PL_PF_INT_CAUSE), v);
	}
	FUNC2(adap);
	return IRQ_HANDLED;
}