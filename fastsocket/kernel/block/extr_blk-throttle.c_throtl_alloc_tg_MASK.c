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
struct throtl_grp {int /*<<< orphan*/  blkg; } ;
struct throtl_data {TYPE_1__* queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct throtl_grp*) ; 
 struct throtl_grp* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct throtl_grp*) ; 

__attribute__((used)) static struct throtl_grp *FUNC4(struct throtl_data *td)
{
	struct throtl_grp *tg = NULL;
	int ret;

	tg = FUNC2(sizeof(*tg), GFP_ATOMIC, td->queue->node);
	if (!tg)
		return NULL;

	ret = FUNC0(&tg->blkg);

	if (ret) {
		FUNC1(tg);
		return NULL;
	}

	FUNC3(tg);
	return tg;
}