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
typedef  int /*<<< orphan*/  u32 ;
struct reg_pair_t {int dummy; } ;
struct mxl5007t_state {int dummy; } ;
typedef  enum mxl5007t_bw_mhz { ____Placeholder_mxl5007t_bw_mhz } mxl5007t_bw_mhz ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct reg_pair_t* FUNC1 (struct mxl5007t_state*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct mxl5007t_state*,struct reg_pair_t*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct mxl5007t_state *state, u32 rf_freq_hz,
				  enum mxl5007t_bw_mhz bw)
{
	struct reg_pair_t *rf_tune_regs;
	int ret;

	/* calculate channel change reg array */
	rf_tune_regs = FUNC1(state, rf_freq_hz, bw);

	ret = FUNC2(state, rf_tune_regs);
	if (FUNC3(ret))
		goto fail;
	FUNC0(3);
fail:
	return ret;
}