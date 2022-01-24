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
typedef  int u16 ;
struct budget_patch {int dummy; } ;

/* Variables and functions */
 int COMTYPE_AUDIODAC ; 
 int OFF22K ; 
 int ON22K ; 
 int /*<<< orphan*/  FUNC0 (struct budget_patch*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct budget_patch*) ; 

__attribute__((used)) static void FUNC2(struct budget_patch *budget, int state)
{
	u16 buf[2] = {( COMTYPE_AUDIODAC << 8) | (state ? ON22K : OFF22K), 0};

	FUNC1(2, "budget: %p\n", budget);
	FUNC0(budget, buf, 2);
}