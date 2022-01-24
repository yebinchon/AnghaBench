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
struct sn9c102_device {int /*<<< orphan*/  kref; TYPE_1__* v4ldev; int /*<<< orphan*/  wait_open; int /*<<< orphan*/  users; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sn9c102_dev_lock ; 
 int /*<<< orphan*/  FUNC3 (struct sn9c102_device*) ; 
 int /*<<< orphan*/  sn9c102_release_resources ; 
 int /*<<< orphan*/  FUNC4 (struct sn9c102_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct sn9c102_device* FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(struct file *filp)
{
	struct sn9c102_device* cam;

	FUNC1(&sn9c102_dev_lock);

	cam = FUNC6(filp);

	FUNC4(cam);
	FUNC3(cam);
	cam->users--;
	FUNC7(&cam->wait_open, 1);

	FUNC0(3, "Video device /dev/video%d closed", cam->v4ldev->num);

	FUNC2(&cam->kref, sn9c102_release_resources);

	FUNC5(&sn9c102_dev_lock);

	return 0;
}