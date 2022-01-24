#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct raid_set {TYPE_1__ io; } ;
typedef  enum raid_set_flags { ____Placeholder_raid_set_flags } raid_set_flags ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 int RS_DEVEL_STATS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct raid_set*) ; 
 size_t FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct raid_set *rs, int argc, char **argv,
		       enum raid_set_flags flag)
{
	size_t len;

	if (argc != 1)
		return -EINVAL;

	len = FUNC2(argv[0]);
	if (len < 2)
		len = 2;

	if (!FUNC3(argv[0], "on", len))
		return FUNC5(flag, &rs->io.flags) ? -EPERM : 0;
	else if (!FUNC3(argv[0], "off", len))
		return FUNC4(flag, &rs->io.flags) ? 0 : -EPERM;
	else if (!FUNC3(argv[0], "reset", len)) {
		if (flag == RS_DEVEL_STATS) {
			if  (FUNC6(flag, &rs->io.flags)) {
				FUNC1(rs);
				return 0;
			} else
				return -EPERM;
		} else  {
			FUNC0(flag, &rs->io.flags);
			return 0;
		}
	}

	return -EINVAL;
}