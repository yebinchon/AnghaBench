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
struct expansion_card {int dummy; } ;

/* Variables and functions */
 int ECARD_NUM_RESOURCES ; 
 scalar_t__ FUNC0 (struct expansion_card*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct expansion_card*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct expansion_card*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct expansion_card *ec)
{
	int i;

	for (i = 0; i < ECARD_NUM_RESOURCES; i++)
		if (FUNC0(ec, i))
			FUNC3(FUNC2(ec, i),
					   FUNC1(ec, i));
}