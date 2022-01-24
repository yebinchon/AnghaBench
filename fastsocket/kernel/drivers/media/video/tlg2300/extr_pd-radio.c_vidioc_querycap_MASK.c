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
struct v4l2_capability {int capabilities; int /*<<< orphan*/  version; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct poseidon {int /*<<< orphan*/  udev; } ;
struct file {struct poseidon* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int V4L2_CAP_RADIO ; 
 int V4L2_CAP_TUNER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
			struct v4l2_capability *v)
{
	struct poseidon *p = file->private_data;

	FUNC1(v->driver, "tele-radio", sizeof(v->driver));
	FUNC1(v->card, "Telegent Poseidon", sizeof(v->card));
	FUNC2(p->udev, v->bus_info, sizeof(v->bus_info));
	v->version = FUNC0(0, 0, 1);
	v->capabilities = V4L2_CAP_TUNER | V4L2_CAP_RADIO;
	return 0;
}