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
struct lanai_vcc {int /*<<< orphan*/ * vbase; } ;

/* Variables and functions */
 int /*<<< orphan*/  RMMODE_TRASH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RXMODE_TRASH ; 
 int /*<<< orphan*/  FUNC2 (struct lanai_vcc const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  vcc_rxaddr1 ; 
 int /*<<< orphan*/  vcc_rxaddr2 ; 
 int /*<<< orphan*/  vcc_rxbufstart ; 
 int /*<<< orphan*/  vcc_rxcrc1 ; 
 int /*<<< orphan*/  vcc_rxcrc2 ; 
 int /*<<< orphan*/  vcc_rxreadptr ; 
 int /*<<< orphan*/  vcc_rxwriteptr ; 

__attribute__((used)) static void FUNC4(const struct lanai_vcc *lvcc)
{
	if (lvcc->vbase == NULL)	/* We were never bound to a VCI */
		return;
	/* 15.1.1 - set to trashing, wait one cell time (15us) */
	FUNC2(lvcc,
	    FUNC1(RMMODE_TRASH) |
	    FUNC0(RXMODE_TRASH), vcc_rxaddr1);
	FUNC3(15);
	/* 15.1.2 - clear rest of entries */
	FUNC2(lvcc, 0, vcc_rxaddr2);
	FUNC2(lvcc, 0, vcc_rxcrc1);
	FUNC2(lvcc, 0, vcc_rxcrc2);
	FUNC2(lvcc, 0, vcc_rxwriteptr);
	FUNC2(lvcc, 0, vcc_rxbufstart);
	FUNC2(lvcc, 0, vcc_rxreadptr);
}