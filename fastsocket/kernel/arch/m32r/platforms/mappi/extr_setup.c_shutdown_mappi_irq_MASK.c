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
 int /*<<< orphan*/  M32R_ICUCR_ILEVEL7 ; 
 unsigned long FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC2(unsigned int irq)
{
	unsigned long port;

	port = FUNC0(irq);
	FUNC1(M32R_ICUCR_ILEVEL7, port);
}