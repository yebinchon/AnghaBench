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
struct tape_device {int dummy; } ;
struct tape_34xx_work {int op; int /*<<< orphan*/  work; int /*<<< orphan*/  device; } ;
typedef  enum tape_op { ____Placeholder_tape_op } tape_op ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct tape_34xx_work* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tape_34xx_work_handler ; 
 int /*<<< orphan*/  FUNC3 (struct tape_device*) ; 

__attribute__((used)) static int
FUNC4(struct tape_device *device, enum tape_op op)
{
	struct tape_34xx_work *p;

	if ((p = FUNC1(sizeof(*p), GFP_ATOMIC)) == NULL)
		return -ENOMEM;

	FUNC0(&p->work, tape_34xx_work_handler);

	p->device = FUNC3(device);
	p->op     = op;

	FUNC2(&p->work);
	return 0;
}