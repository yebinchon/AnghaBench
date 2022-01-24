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
struct _pid {int setpoint; scalar_t__ deadband; int p_gain; int integral; int d_gain; int last_err; int i_gain; } ;
typedef  int int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static signed int FUNC4(struct _pid *pid, int busy)
{
	signed int err, result;
	int32_t pterm, dterm, fp_error;
	int32_t integral_limit;

	err = pid->setpoint - busy;
	fp_error = FUNC2(err);

	if (FUNC0(err) <= pid->deadband)
		return 0;

	pterm = FUNC3(pid->p_gain, fp_error);

	pid->integral += fp_error;

	/* limit the integral term */
	integral_limit = FUNC2(30);
	if (pid->integral > integral_limit)
		pid->integral = integral_limit;
	if (pid->integral < -integral_limit)
		pid->integral = -integral_limit;

	dterm = FUNC3(pid->d_gain, (err - pid->last_err));
	pid->last_err = err;

	result = pterm + FUNC3(pid->integral, pid->i_gain) + dterm;

	return (signed int)FUNC1(result);
}