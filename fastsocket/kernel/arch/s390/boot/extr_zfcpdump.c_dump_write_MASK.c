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
typedef  size_t ssize_t ;

/* Variables and functions */
 scalar_t__ ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ errno ; 
 size_t FUNC2 (int,void const*,size_t) ; 

__attribute__((used)) static ssize_t FUNC3(int fd, const void *buf, size_t count)
{
	ssize_t written, rc;

	written = 0;
	while (written != count) {
		rc = FUNC2(fd, buf + written, count - written);
		if ((rc == -1) && (errno == ENOSPC)) {
			FUNC0("No space left on device!\n");
			/* Try to erase old dump */
			if (FUNC1())
				return -1;
			continue;
		} else if (rc == -1) {
			/* Write failed somehow */
			return -1;
		}
		written += rc;
	}
	return written;
}