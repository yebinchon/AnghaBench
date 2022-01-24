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
struct firedtv_tuner_status {scalar_t__ ca_application_info; int ca_date_time_request; } ;
struct firedtv {int /*<<< orphan*/  ca_time_interval; int /*<<< orphan*/  device; int /*<<< orphan*/  cadev; int /*<<< orphan*/  adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  DVB_DEVICE_CA ; 
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct firedtv*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct firedtv*,struct firedtv_tuner_status*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct firedtv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fdtv_ca ; 
 int /*<<< orphan*/  FUNC4 (struct firedtv_tuner_status*) ; 

int FUNC5(struct firedtv *fdtv)
{
	struct firedtv_tuner_status stat;
	int err;

	if (FUNC1(fdtv, &stat))
		return -EINVAL;

	if (!FUNC4(&stat))
		return -EFAULT;

	err = FUNC3(&fdtv->adapter, &fdtv->cadev,
				  &fdtv_ca, fdtv, DVB_DEVICE_CA);

	if (stat.ca_application_info == 0)
		FUNC2(fdtv->device, "CaApplicationInfo is not set\n");
	if (stat.ca_date_time_request == 1)
		FUNC0(fdtv, &fdtv->ca_time_interval);

	return err;
}