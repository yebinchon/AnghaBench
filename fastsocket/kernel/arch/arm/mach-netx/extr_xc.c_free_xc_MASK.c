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
struct xc {int no; int /*<<< orphan*/  sram_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SRAM_MEM_SIZE ; 
 int /*<<< orphan*/  XMAC_MEM_SIZE ; 
 int /*<<< orphan*/  XPEC_MEM_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct xc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int xc_in_use ; 
 int /*<<< orphan*/  xc_lock ; 

void FUNC8(struct xc *x)
{
	int xcno = x->no;

	FUNC5(&xc_lock);

	FUNC3(x->sram_base);
	FUNC7(FUNC2(xcno), SRAM_MEM_SIZE);
	FUNC7(FUNC0(xcno), XMAC_MEM_SIZE);
	FUNC7(FUNC1(xcno), XPEC_MEM_SIZE);
	xc_in_use &= ~(1 << x->no);
	FUNC4(x);

	FUNC6(&xc_lock);
}