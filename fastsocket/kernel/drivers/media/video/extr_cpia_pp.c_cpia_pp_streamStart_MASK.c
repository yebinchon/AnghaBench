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
struct pp_cam_entry {int streaming; int /*<<< orphan*/  port; scalar_t__ stream_irq; scalar_t__ image_ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void *privdata)
{
	struct pp_cam_entry *cam = privdata;
	FUNC0("\n");
	cam->streaming=1;
	cam->image_ready=0;
	//if (ReverseSetup(cam,1)) return -EIO;
	if(cam->stream_irq) FUNC1(cam->port);
	return 0;
}