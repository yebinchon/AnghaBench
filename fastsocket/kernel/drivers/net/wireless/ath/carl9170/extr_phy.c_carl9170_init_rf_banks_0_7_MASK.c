#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ar9170 {TYPE_1__* hw; } ;
struct TYPE_5__ {int /*<<< orphan*/  _2ghz; int /*<<< orphan*/  _5ghz; int /*<<< orphan*/  reg; } ;
struct TYPE_4__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 TYPE_2__* carl9170_rf_initval ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct ar9170 *ar, bool band5ghz)
{
	int err, i;

	FUNC2(ar);

	for (i = 0; i < FUNC0(carl9170_rf_initval); i++)
		FUNC1(carl9170_rf_initval[i].reg,
				  band5ghz ? carl9170_rf_initval[i]._5ghz
					   : carl9170_rf_initval[i]._2ghz);

	FUNC3();
	err = FUNC4();
	if (err)
		FUNC5(ar->hw->wiphy, "rf init failed\n");

	return err;
}