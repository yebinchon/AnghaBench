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
struct dvb_frontend_parameters {int dummy; } ;
struct dvb_frontend {int dummy; } ;
typedef  int /*<<< orphan*/  fe_status_t ;

/* Variables and functions */
 int HZ ; 
 int FUNC0 (struct dvb_frontend*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct dvb_frontend*,struct dvb_frontend_parameters*) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe, struct dvb_frontend_parameters *params,
	unsigned int mode_flags, unsigned int *delay, fe_status_t *status)
{
	*delay = HZ / 5;
	if (params) {
		int ret = FUNC1(fe, params);
		if (ret)
			return ret;
	}
	return FUNC0(fe, status);
}