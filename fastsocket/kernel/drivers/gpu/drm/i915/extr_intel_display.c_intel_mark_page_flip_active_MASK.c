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
struct intel_crtc {TYPE_1__* unpin_work; } ;
struct TYPE_2__ {int /*<<< orphan*/  pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  INTEL_FLIP_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) inline static void FUNC2(struct intel_crtc *intel_crtc)
{
	/* Ensure that the work item is consistent when activating it ... */
	FUNC1();
	FUNC0(&intel_crtc->unpin_work->pending, INTEL_FLIP_PENDING);
	/* and that it is marked active as soon as the irq could fire. */
	FUNC1();
}