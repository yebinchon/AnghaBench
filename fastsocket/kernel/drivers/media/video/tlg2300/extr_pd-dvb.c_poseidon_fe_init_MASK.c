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
struct pd_dvb_adapter {int /*<<< orphan*/  fe_param; } ;
struct poseidon {int /*<<< orphan*/  pm_resume; int /*<<< orphan*/  pm_suspend; struct pd_dvb_adapter dvb_data; } ;
struct dvb_frontend_parameters {int dummy; } ;
struct dvb_frontend {struct poseidon* demodulator_priv; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pm_dvb_resume ; 
 int /*<<< orphan*/  pm_dvb_suspend ; 

__attribute__((used)) static s32 FUNC1(struct dvb_frontend *fe)
{
	struct poseidon *pd = fe->demodulator_priv;
	struct pd_dvb_adapter *pd_dvb = &pd->dvb_data;

#ifdef CONFIG_PM
	pd->pm_suspend = pm_dvb_suspend;
	pd->pm_resume  = pm_dvb_resume;
#endif
	FUNC0(&pd_dvb->fe_param, 0,
			sizeof(struct dvb_frontend_parameters));
	return 0;
}