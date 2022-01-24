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
typedef  int u8 ;
struct isac_hw {int state; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISAC_CIR0 ; 
 int /*<<< orphan*/  ISAC_CIR1 ; 
 int FUNC0 (struct isac_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isac_hw*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,...) ; 

__attribute__((used)) static void
FUNC3(struct isac_hw *isac) {
	u8 val;

	val = FUNC0(isac, ISAC_CIR0);
	FUNC2("%s: ISAC CIR0 %02X\n", isac->name, val);
	if (val & 2) {
		FUNC2("%s: ph_state change %x->%x\n", isac->name,
			isac->state, (val >> 2) & 0xf);
		isac->state = (val >> 2) & 0xf;
		FUNC1(isac);
	}
	if (val & 1) {
		val = FUNC0(isac, ISAC_CIR1);
		FUNC2("%s: ISAC CIR1 %02X\n", isac->name, val);
	}
}