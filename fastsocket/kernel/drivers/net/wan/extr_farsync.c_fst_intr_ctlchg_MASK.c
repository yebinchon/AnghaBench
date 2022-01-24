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
struct fst_port_info {size_t index; scalar_t__ hwif; } ;
struct fst_card_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_INTR ; 
 int FUNC0 (struct fst_card_info*,int /*<<< orphan*/ ) ; 
 int IPSTS_DCD ; 
 int IPSTS_INDICATE ; 
 scalar_t__ X21 ; 
 scalar_t__ X21D ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct fst_port_info*) ; 
 int /*<<< orphan*/ * v24DebouncedSts ; 

__attribute__((used)) static void
FUNC6(struct fst_card_info *card, struct fst_port_info *port)
{
	int signals;

	signals = FUNC0(card, v24DebouncedSts[port->index]);

	if (signals & (((port->hwif == X21) || (port->hwif == X21D))
		       ? IPSTS_INDICATE : IPSTS_DCD)) {
		if (!FUNC3(FUNC5(port))) {
			FUNC1(DBG_INTR, "DCD active\n");
			FUNC4(FUNC5(port));
		}
	} else {
		if (FUNC3(FUNC5(port))) {
			FUNC1(DBG_INTR, "DCD lost\n");
			FUNC2(FUNC5(port));
		}
	}
}