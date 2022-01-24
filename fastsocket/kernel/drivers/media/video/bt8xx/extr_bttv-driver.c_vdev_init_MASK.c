#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct video_device {int /*<<< orphan*/  name; int /*<<< orphan*/  debug; int /*<<< orphan*/  release; int /*<<< orphan*/ * v4l2_dev; } ;
struct TYPE_3__ {size_t type; int /*<<< orphan*/  v4l2_dev; } ;
struct bttv {int id; int revision; TYPE_1__ c; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  bttv_debug ; 
 TYPE_2__* bttv_tvcards ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int,char*,char const*,int /*<<< orphan*/ ) ; 
 struct video_device* FUNC1 () ; 
 int /*<<< orphan*/  video_device_release ; 
 int /*<<< orphan*/  FUNC2 (struct video_device*,struct bttv*) ; 

__attribute__((used)) static struct video_device *FUNC3(struct bttv *btv,
				      const struct video_device *template,
				      const char *type_name)
{
	struct video_device *vfd;

	vfd = FUNC1();
	if (NULL == vfd)
		return NULL;
	*vfd = *template;
	vfd->v4l2_dev = &btv->c.v4l2_dev;
	vfd->release = video_device_release;
	vfd->debug   = bttv_debug;
	FUNC2(vfd, btv);
	FUNC0(vfd->name, sizeof(vfd->name), "BT%d%s %s (%s)",
		 btv->id, (btv->id==848 && btv->revision==0x12) ? "A" : "",
		 type_name, bttv_tvcards[btv->c.type].name);
	return vfd;
}