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
struct em28xx {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  ctl_input; } ;
struct TYPE_2__ {int /*<<< orphan*/  vmux; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  reset ; 
 int /*<<< orphan*/  s_routing ; 
 int /*<<< orphan*/  s_stream ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  video ; 

void FUNC2(struct em28xx *dev)
{
	FUNC1(&dev->v4l2_dev, 0, core,  reset, 0);
	FUNC1(&dev->v4l2_dev, 0, video, s_routing,
			FUNC0(dev->ctl_input)->vmux, 0, 0);
	FUNC1(&dev->v4l2_dev, 0, video, s_stream, 0);
}