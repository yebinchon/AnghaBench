#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ msg_len; } ;
struct av7110 {int /*<<< orphan*/  saved_fe_params; int /*<<< orphan*/  fe; int /*<<< orphan*/  saved_tone; int /*<<< orphan*/  saved_minicmd; TYPE_1__ saved_master_cmd; int /*<<< orphan*/  saved_voltage; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct av7110* av7110)
{
	FUNC2(av7110->fe);

	FUNC5(av7110->fe, av7110->saved_voltage);
	if (av7110->saved_master_cmd.msg_len) {
		FUNC6(20);
		FUNC1(av7110->fe, &av7110->saved_master_cmd);
	}
	FUNC6(20);
	FUNC0(av7110->fe, av7110->saved_minicmd);
	FUNC6(20);
	FUNC4(av7110->fe, av7110->saved_tone);

	FUNC3(av7110->fe, &av7110->saved_fe_params);
}