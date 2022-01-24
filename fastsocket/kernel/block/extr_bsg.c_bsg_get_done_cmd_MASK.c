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
struct bsg_device {int /*<<< orphan*/  name; int /*<<< orphan*/  done_cmds; int /*<<< orphan*/  wq_done; int /*<<< orphan*/  flags; } ;
struct bsg_command {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSG_F_BLOCK ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ERESTARTSYS ; 
 struct bsg_command* FUNC0 (int /*<<< orphan*/ ) ; 
 struct bsg_command* FUNC1 (struct bsg_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,struct bsg_command*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct bsg_command *FUNC5(struct bsg_device *bd)
{
	struct bsg_command *bc;
	int ret;

	do {
		bc = FUNC1(bd);
		if (bc)
			break;

		if (!FUNC3(BSG_F_BLOCK, &bd->flags)) {
			bc = FUNC0(-EAGAIN);
			break;
		}

		ret = FUNC4(bd->wq_done, bd->done_cmds);
		if (ret) {
			bc = FUNC0(-ERESTARTSYS);
			break;
		}
	} while (1);

	FUNC2("%s: returning done %p\n", bd->name, bc);

	return bc;
}