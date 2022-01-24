#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  kobj; } ;
struct subchannel {TYPE_1__ dev; int /*<<< orphan*/ * lock; int /*<<< orphan*/  isc; } ;
struct eadm_private {int /*<<< orphan*/  head; struct subchannel* sch; int /*<<< orphan*/  state; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  EADM_IDLE ; 
 int /*<<< orphan*/  EADM_SCH_ISC ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int FUNC1 (struct subchannel*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eadm_list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct eadm_private*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct eadm_private* FUNC7 (int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_lock ; 
 int /*<<< orphan*/  FUNC9 (struct subchannel*,struct eadm_private*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct subchannel *sch)
{
	struct eadm_private *private;
	int ret;

	private = FUNC7(sizeof(*private), GFP_KERNEL | GFP_DMA);
	if (!private)
		return -ENOMEM;

	FUNC0(&private->head);
	FUNC4(&private->timer);

	FUNC10(sch->lock);
	FUNC9(sch, private);
	private->state = EADM_IDLE;
	private->sch = sch;
	sch->isc = EADM_SCH_ISC;
	ret = FUNC1(sch, (u32)(unsigned long)sch);
	if (ret) {
		FUNC9(sch, NULL);
		FUNC11(sch->lock);
		FUNC5(private);
		goto out;
	}
	FUNC11(sch->lock);

	FUNC10(&list_lock);
	FUNC8(&private->head, &eadm_list);
	FUNC11(&list_lock);

	if (FUNC2(&sch->dev)) {
		FUNC3(&sch->dev, 0);
		FUNC6(&sch->dev.kobj, KOBJ_ADD);
	}
out:
	return ret;
}