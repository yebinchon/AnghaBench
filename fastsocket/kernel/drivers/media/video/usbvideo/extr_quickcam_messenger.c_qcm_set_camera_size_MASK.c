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
struct uvd {int /*<<< orphan*/  videosize; scalar_t__ user_data; } ;
struct qcm {size_t size; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_2__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* camera_sizes ; 
 int /*<<< orphan*/  FUNC2 (struct uvd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct uvd *uvd)
{
	int ret;
	struct qcm *cam = (struct qcm *) uvd->user_data;

	FUNC0(ret, FUNC2(uvd, camera_sizes[cam->size].cmd));
	cam->width = camera_sizes[cam->size].width;
	cam->height = camera_sizes[cam->size].height;
	uvd->videosize = FUNC1(cam->width, cam->height);

	return 0;
}