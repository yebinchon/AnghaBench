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
struct ath_hw_private_ops {int /*<<< orphan*/  setup_calibration; int /*<<< orphan*/  init_cal; int /*<<< orphan*/  init_cal_settings; } ;
struct ath_hw_ops {int /*<<< orphan*/  calibrate; } ;
struct ath_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ar9003_hw_calibrate ; 
 int /*<<< orphan*/  ar9003_hw_init_cal ; 
 int /*<<< orphan*/  ar9003_hw_init_cal_settings ; 
 int /*<<< orphan*/  ar9003_hw_setup_calibration ; 
 struct ath_hw_ops* FUNC0 (struct ath_hw*) ; 
 struct ath_hw_private_ops* FUNC1 (struct ath_hw*) ; 

void FUNC2(struct ath_hw *ah)
{
	struct ath_hw_private_ops *priv_ops = FUNC1(ah);
	struct ath_hw_ops *ops = FUNC0(ah);

	priv_ops->init_cal_settings = ar9003_hw_init_cal_settings;
	priv_ops->init_cal = ar9003_hw_init_cal;
	priv_ops->setup_calibration = ar9003_hw_setup_calibration;

	ops->calibrate = ar9003_hw_calibrate;
}