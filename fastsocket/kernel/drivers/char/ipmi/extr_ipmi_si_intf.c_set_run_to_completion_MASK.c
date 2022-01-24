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
struct smi_info {int run_to_completion; } ;
typedef  enum si_sm_result { ____Placeholder_si_sm_result } si_sm_result ;

/* Variables and functions */
 int /*<<< orphan*/  SI_SHORT_TIMEOUT_USEC ; 
 int SI_SM_IDLE ; 
 int FUNC0 (struct smi_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(void *send_info, int i_run_to_completion)
{
	struct smi_info   *smi_info = send_info;
	enum si_sm_result result;

	smi_info->run_to_completion = i_run_to_completion;
	if (i_run_to_completion) {
		result = FUNC0(smi_info, 0);
		while (result != SI_SM_IDLE) {
			FUNC1(SI_SHORT_TIMEOUT_USEC);
			result = FUNC0(smi_info,
						   SI_SHORT_TIMEOUT_USEC);
		}
	}
}