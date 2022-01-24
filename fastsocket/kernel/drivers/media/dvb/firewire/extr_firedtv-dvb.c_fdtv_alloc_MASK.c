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
struct firedtv_backend {int dummy; } ;
struct firedtv {int isochannel; int voltage; int tone; int type; int /*<<< orphan*/  remote_ctrl_work; int /*<<< orphan*/  demux_mutex; int /*<<< orphan*/  avc_wait; int /*<<< orphan*/  avc_mutex; struct firedtv_backend const* backend; struct device* device; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  avc_remote_ctrl_work ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct firedtv*) ; 
 int /*<<< orphan*/ * fdtv_model_names ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct firedtv* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char const*,int /*<<< orphan*/ ,size_t) ; 

struct firedtv *FUNC8(struct device *dev,
			   const struct firedtv_backend *backend,
			   const char *name, size_t name_len)
{
	struct firedtv *fdtv;
	int i;

	fdtv = FUNC4(sizeof(*fdtv), GFP_KERNEL);
	if (!fdtv)
		return NULL;

	FUNC2(dev, fdtv);
	fdtv->device		= dev;
	fdtv->isochannel	= -1;
	fdtv->voltage		= 0xff;
	fdtv->tone		= 0xff;
	fdtv->backend		= backend;

	FUNC5(&fdtv->avc_mutex);
	FUNC3(&fdtv->avc_wait);
	FUNC5(&fdtv->demux_mutex);
	FUNC1(&fdtv->remote_ctrl_work, avc_remote_ctrl_work);

	for (i = FUNC0(fdtv_model_names); --i; )
		if (FUNC6(fdtv_model_names[i]) <= name_len &&
		    FUNC7(name, fdtv_model_names[i], name_len) == 0)
			break;
	fdtv->type = i;

	return fdtv;
}