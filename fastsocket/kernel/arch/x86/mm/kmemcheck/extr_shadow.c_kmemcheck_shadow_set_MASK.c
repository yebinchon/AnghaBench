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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  KMEMCHECK_SHADOW_INITIALIZED ; 

void FUNC0(void *shadow, unsigned int size)
{
	uint8_t *x;
	unsigned int i;

	x = shadow;
	for (i = 0; i < size; ++i)
		x[i] = KMEMCHECK_SHADOW_INITIALIZED;
}