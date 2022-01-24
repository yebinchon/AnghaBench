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
struct subch_data_s {int /*<<< orphan*/  sd_rlock; int /*<<< orphan*/  sd_rb; int /*<<< orphan*/  sd_subch; int /*<<< orphan*/  sd_nasid; } ;

/* Variables and functions */
 int CHUNKSIZE ; 
 struct subch_data_s* event_sd ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC4(unsigned long dummy)
{
	int status;
	int len;
	unsigned long flags;
	struct subch_data_s *sd = event_sd;

	/* anything to read? */
	len = CHUNKSIZE;
	FUNC2(&sd->sd_rlock, flags);
	status = FUNC0(sd->sd_nasid, sd->sd_subch,
				   sd->sd_rb, &len);

	while (!(status < 0)) {
		FUNC3(&sd->sd_rlock, flags);
		FUNC1(sd->sd_rb, len);
		len = CHUNKSIZE;
		FUNC2(&sd->sd_rlock, flags);
		status = FUNC0(sd->sd_nasid, sd->sd_subch,
					   sd->sd_rb, &len);
	}
	FUNC3(&sd->sd_rlock, flags);
}