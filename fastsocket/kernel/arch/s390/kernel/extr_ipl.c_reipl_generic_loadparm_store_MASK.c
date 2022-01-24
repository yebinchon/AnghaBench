#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  load_parm; } ;
struct TYPE_4__ {TYPE_1__ ccw; } ;
struct ipl_parameter_block {TYPE_2__ ipl_info; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 size_t EINVAL ; 
 int LOADPARM_LEN ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char,int) ; 

__attribute__((used)) static ssize_t FUNC5(struct ipl_parameter_block *ipb,
					    const char *buf, size_t len)
{
	int i, lp_len;

	/* ignore trailing newline */
	lp_len = len;
	if ((len > 0) && (buf[len - 1] == '\n'))
		lp_len--;
	/* loadparm can have max 8 characters and must not start with a blank */
	if ((lp_len > LOADPARM_LEN) || ((lp_len > 0) && (buf[0] == ' ')))
		return -EINVAL;
	/* loadparm can only contain "a-z,A-Z,0-9,SP,." */
	for (i = 0; i < lp_len; i++) {
		if (FUNC1(buf[i]) || FUNC2(buf[i]) || (buf[i] == ' ') ||
		    (buf[i] == '.'))
			continue;
		return -EINVAL;
	}
	/* initialize loadparm with blanks */
	FUNC4(ipb->ipl_info.ccw.load_parm, ' ', LOADPARM_LEN);
	/* copy and convert to ebcdic */
	FUNC3(ipb->ipl_info.ccw.load_parm, buf, lp_len);
	FUNC0(ipb->ipl_info.ccw.load_parm, LOADPARM_LEN);
	return len;
}