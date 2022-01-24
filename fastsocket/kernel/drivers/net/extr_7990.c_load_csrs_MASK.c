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
struct lance_private {int busmaster_regval; struct lance_init_block* lance_init_block; } ;
struct lance_init_block {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct lance_init_block volatile*) ; 
 int /*<<< orphan*/  LE_CSR0 ; 
 int /*<<< orphan*/  LE_CSR1 ; 
 int /*<<< orphan*/  LE_CSR2 ; 
 int /*<<< orphan*/  LE_CSR3 ; 
 int /*<<< orphan*/  FUNC1 (struct lance_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lance_private*,int) ; 

__attribute__((used)) static void FUNC3 (struct lance_private *lp)
{
        volatile struct lance_init_block *aib = lp->lance_init_block;
        int leptr;

        leptr = FUNC0 (aib);

        FUNC1(lp, LE_CSR1);                    /* load address of init block */
        FUNC2(lp, leptr & 0xFFFF);
        FUNC1(lp, LE_CSR2);
        FUNC2(lp, leptr >> 16);
        FUNC1(lp, LE_CSR3);
        FUNC2(lp, lp->busmaster_regval);       /* set byteswap/ALEctrl/byte ctrl */

        /* Point back to csr0 */
        FUNC1(lp, LE_CSR0);
}