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
struct device_driver {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 scalar_t__ scsi_debug_cmnd_count ; 
 int scsi_debug_opts ; 
 int FUNC0 (char const*,char*,...) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct device_driver * ddp,
				 const char * buf, size_t count)
{
        int opts;
	char work[20];

        if (1 == FUNC0(buf, "%10s", work)) {
		if (0 == FUNC1(work,"0x", 2)) {
			if (1 == FUNC0(&work[2], "%x", &opts))
				goto opts_done;
		} else {
			if (1 == FUNC0(work, "%d", &opts))
				goto opts_done;
		}
	}
	return -EINVAL;
opts_done:
	scsi_debug_opts = opts;
	scsi_debug_cmnd_count = 0;
	return count;
}