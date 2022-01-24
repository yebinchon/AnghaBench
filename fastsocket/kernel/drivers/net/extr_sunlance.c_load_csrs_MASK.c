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
struct lance_private {int busmaster_regval; scalar_t__ lregs; int /*<<< orphan*/  init_block_dvma; scalar_t__ pio_buffer; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int LE_CSR0 ; 
 int LE_CSR1 ; 
 int LE_CSR2 ; 
 int LE_CSR3 ; 
 scalar_t__ RAP ; 
 scalar_t__ RDP ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct lance_private *lp)
{
	u32 leptr;

	if (lp->pio_buffer)
		leptr = 0;
	else
		leptr = FUNC0(lp->init_block_dvma);

	FUNC1(LE_CSR1,		  lp->lregs + RAP);
	FUNC1(leptr & 0xffff,	  lp->lregs + RDP);
	FUNC1(LE_CSR2,		  lp->lregs + RAP);
	FUNC1(leptr >> 16,	  lp->lregs + RDP);
	FUNC1(LE_CSR3,		  lp->lregs + RAP);
	FUNC1(lp->busmaster_regval, lp->lregs + RDP);

	/* Point back to csr0 */
	FUNC1(LE_CSR0, lp->lregs + RAP);
}