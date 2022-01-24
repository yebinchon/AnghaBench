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
struct nouveau_subdev {int /*<<< orphan*/  mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  engine; } ;
struct nouveau_instobj {TYPE_1__ base; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 void FUNC3 (TYPE_1__*) ; 
 struct nouveau_subdev* FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(struct nouveau_instobj *iobj)
{
	struct nouveau_subdev *subdev = FUNC4(iobj->base.engine);

	FUNC1(&subdev->mutex);
	FUNC0(&iobj->head);
	FUNC2(&subdev->mutex);

	return FUNC3(&iobj->base);
}