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

/* Variables and functions */
 unsigned int CCDC_SYNCEN_VDHDEN_MASK ; 
 int /*<<< orphan*/  SYNCEN ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(int en)
{
	unsigned int temp;
	temp = FUNC0(SYNCEN);
	temp &= (~CCDC_SYNCEN_VDHDEN_MASK);
	temp |= (en & CCDC_SYNCEN_VDHDEN_MASK);
	FUNC1(temp, SYNCEN);
}