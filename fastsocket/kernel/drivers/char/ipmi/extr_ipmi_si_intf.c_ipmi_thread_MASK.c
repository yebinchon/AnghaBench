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
struct timespec {int dummy; } ;
struct smi_info {int /*<<< orphan*/  si_lock; } ;
typedef  enum si_sm_result { ____Placeholder_si_sm_result } si_sm_result ;

/* Variables and functions */
 int SI_SM_CALL_WITHOUT_DELAY ; 
 int SI_SM_CALL_WITH_DELAY ; 
 int SI_SM_IDLE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct timespec*) ; 
 int FUNC1 (int,struct smi_info*,struct timespec*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct smi_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC9(void *data)
{
	struct smi_info *smi_info = data;
	unsigned long flags;
	enum si_sm_result smi_result;
	struct timespec busy_until;

	FUNC0(&busy_until);

	FUNC5(current, 19);
	while (!FUNC2()) {
		int busy_wait;

		FUNC7(&(smi_info->si_lock), flags);
		smi_result = FUNC6(smi_info, 0);
		FUNC8(&(smi_info->si_lock), flags);
		busy_wait = FUNC1(smi_result, smi_info,
						  &busy_until);

		if (smi_result == SI_SM_CALL_WITHOUT_DELAY)
			; /* do nothing */
		else if (smi_result == SI_SM_CALL_WITH_DELAY && busy_wait)
			FUNC3();
		else if (smi_result == SI_SM_IDLE)
			FUNC4(100);
		else
			FUNC4(1);
	}
	return 0;
}