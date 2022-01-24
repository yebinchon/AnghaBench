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
struct clk {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 unsigned long CCM_PCDR0_NFCDIV_MASK ; 
 unsigned long CCM_PCDR0_NFCDIV_OFFSET ; 
 unsigned long FUNC0 () ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC2(struct clk *clk)
{
	unsigned long nfc_pdf;
	unsigned long parent_rate;

	parent_rate = FUNC1(clk->parent);

	nfc_pdf = (FUNC0() & CCM_PCDR0_NFCDIV_MASK)
		>> CCM_PCDR0_NFCDIV_OFFSET;

	return parent_rate / (nfc_pdf + 1);
}