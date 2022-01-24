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
struct zc0301_device {int /*<<< orphan*/  kref; TYPE_1__* v4ldev; int /*<<< orphan*/  wait_open; int /*<<< orphan*/  users; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct zc0301_device* FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  zc0301_dev_lock ; 
 int /*<<< orphan*/  FUNC6 (struct zc0301_device*) ; 
 int /*<<< orphan*/  zc0301_release_resources ; 
 int /*<<< orphan*/  FUNC7 (struct zc0301_device*) ; 

__attribute__((used)) static int FUNC8(struct file *filp)
{
	struct zc0301_device* cam;

	FUNC1(&zc0301_dev_lock);

	cam = FUNC4(filp);

	FUNC7(cam);
	FUNC6(cam);
	cam->users--;
	FUNC5(&cam->wait_open, 1);

	FUNC0(3, "Video device /dev/video%d closed", cam->v4ldev->num);

	FUNC2(&cam->kref, zc0301_release_resources);

	FUNC3(&zc0301_dev_lock);

	return 0;
}