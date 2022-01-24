#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct clk {TYPE_1__* parent; } ;
struct TYPE_2__ {unsigned long rate; } ;

/* Variables and functions */
 int BFC_MSK ; 
 int BFC_POS ; 
 int /*<<< orphan*/  FRQCR ; 
 unsigned long* bfc_divisors ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC1(struct clk *clk)
{
	int idx = ((FUNC0(FRQCR) >> BFC_POS) & BFC_MSK);
	return clk->parent->rate / bfc_divisors[idx];
}