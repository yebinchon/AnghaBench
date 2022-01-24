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
 int /*<<< orphan*/  S3C24XX_MISCCR ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 

unsigned int FUNC4(unsigned int clear, unsigned int change)
{
	unsigned long flags;
	unsigned long misccr;

	FUNC3(flags);
	misccr = FUNC0(S3C24XX_MISCCR);
	misccr &= ~clear;
	misccr ^= change;
	FUNC1(misccr, S3C24XX_MISCCR);
	FUNC2(flags);

	return misccr;
}