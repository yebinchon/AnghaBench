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
typedef  int /*<<< orphan*/  act2000_card ;

/* Variables and functions */
 int /*<<< orphan*/  ISA_PORT_SIS ; 
 int /*<<< orphan*/  ISA_SIS_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(act2000_card * card)
{
	FUNC0(card);
	/* Enable READ irq */
	FUNC1(ISA_SIS_INT, ISA_PORT_SIS);
}