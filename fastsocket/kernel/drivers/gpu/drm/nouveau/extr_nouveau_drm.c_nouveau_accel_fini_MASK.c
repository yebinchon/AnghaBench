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
struct nouveau_drm {scalar_t__ fence; int /*<<< orphan*/  cechan; int /*<<< orphan*/  channel; int /*<<< orphan*/  notify; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* dtor ) (struct nouveau_drm*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct nouveau_drm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nouveau_drm*) ; 

__attribute__((used)) static void
FUNC4(struct nouveau_drm *drm)
{
	FUNC2(NULL, &drm->notify);
	FUNC0(&drm->channel);
	FUNC0(&drm->cechan);
	if (drm->fence)
		FUNC1(drm)->dtor(drm);
}