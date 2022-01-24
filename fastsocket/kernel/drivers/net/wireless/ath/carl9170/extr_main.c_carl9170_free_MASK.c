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
struct ar9170 {int /*<<< orphan*/  hw; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * survey; int /*<<< orphan*/ * mem_bitmap; int /*<<< orphan*/ * rx_failover; int /*<<< orphan*/  registered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct ar9170 *ar)
{
	FUNC1(ar->registered);
	FUNC1(FUNC0(ar));

	FUNC4(ar->rx_failover);
	ar->rx_failover = NULL;

	FUNC3(ar->mem_bitmap);
	ar->mem_bitmap = NULL;

	FUNC3(ar->survey);
	ar->survey = NULL;

	FUNC5(&ar->mutex);

	FUNC2(ar->hw);
}