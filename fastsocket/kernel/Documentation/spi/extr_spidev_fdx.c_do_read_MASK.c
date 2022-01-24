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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5(int fd, int len)
{
	unsigned char	buf[32], *bp;
	int		status;

	/* read at least 2 bytes, no more than 32 */
	if (len < 2)
		len = 2;
	else if (len > sizeof(buf))
		len = sizeof(buf);
	FUNC1(buf, 0, sizeof buf);

	status = FUNC4(fd, buf, len);
	if (status < 0) {
		FUNC2("read");
		return;
	}
	if (status != len) {
		FUNC0(stderr, "short read\n");
		return;
	}

	FUNC3("read(%2d, %2d): %02x %02x,", len, status,
		buf[0], buf[1]);
	status -= 2;
	bp = buf + 2;
	while (status-- > 0)
		FUNC3(" %02x", *bp++);
	FUNC3("\n");
}