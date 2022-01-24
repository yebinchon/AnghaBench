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
 unsigned int ASSABET_BCR ; 
 unsigned int BCR_value ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

void FUNC2(unsigned int mask, unsigned int val)
{
	unsigned long flags;

	FUNC1(flags);
	BCR_value = (BCR_value & ~mask) | val;
	ASSABET_BCR = BCR_value;
	FUNC0(flags);
}