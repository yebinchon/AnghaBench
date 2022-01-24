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
struct file {int dummy; } ;
struct et61x251_device {int /*<<< orphan*/  kref; TYPE_1__* v4ldev; int /*<<< orphan*/  wait_open; int /*<<< orphan*/  users; } ;
struct TYPE_2__ {int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  et61x251_dev_lock ; 
 int /*<<< orphan*/  FUNC2 (struct et61x251_device*) ; 
 int /*<<< orphan*/  et61x251_release_resources ; 
 int /*<<< orphan*/  FUNC3 (struct et61x251_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct et61x251_device* FUNC6 (struct file*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(struct file *filp)
{
	struct et61x251_device* cam;

	FUNC1(&et61x251_dev_lock);

	cam = FUNC6(filp);

	FUNC3(cam);
	FUNC2(cam);
	cam->users--;
	FUNC7(&cam->wait_open, 1);

	FUNC0(3, "Video device /dev/video%d closed", cam->v4ldev->num);

	FUNC4(&cam->kref, et61x251_release_resources);

	FUNC5(&et61x251_dev_lock);

	return 0;
}