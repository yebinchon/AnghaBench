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
struct subch_data_s {int /*<<< orphan*/  sd_rlock; int /*<<< orphan*/  sd_wlock; int /*<<< orphan*/  sd_subch; int /*<<< orphan*/  sd_nasid; int /*<<< orphan*/  sd_wq; int /*<<< orphan*/  sd_rq; } ;
struct poll_table_struct {int dummy; } ;
struct file {scalar_t__ private_data; } ;

/* Variables and functions */
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 unsigned int POLLRDNORM ; 
 unsigned int POLLWRNORM ; 
 int SAL_IROUTER_INTR_RECV ; 
 int SAL_IROUTER_INTR_XMIT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned int
FUNC6(struct file *file, struct poll_table_struct *wait)
{
	unsigned int mask = 0;
	int status = 0;
	struct subch_data_s *sd = (struct subch_data_s *) file->private_data;
	unsigned long flags;

	FUNC1(file, &sd->sd_rq, wait);
	FUNC1(file, &sd->sd_wq, wait);

	FUNC3(&sd->sd_rlock, flags);
	FUNC2(&sd->sd_wlock);
	status = FUNC0(sd->sd_nasid, sd->sd_subch);
	FUNC4(&sd->sd_wlock);
	FUNC5(&sd->sd_rlock, flags);

	if (status > 0) {
		if (status & SAL_IROUTER_INTR_RECV) {
			mask |= POLLIN | POLLRDNORM;
		}
		if (status & SAL_IROUTER_INTR_XMIT) {
			mask |= POLLOUT | POLLWRNORM;
		}
	}

	return mask;
}