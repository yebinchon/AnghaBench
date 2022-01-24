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
 int /*<<< orphan*/  SSC_CONNECT_INTERRUPT ; 
 int /*<<< orphan*/  FUNC0 (long,long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC1 (long intr, long irq)
{
	FUNC0(intr, irq, 0, 0, SSC_CONNECT_INTERRUPT);
}