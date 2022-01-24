#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct TYPE_6__ {TYPE_3__* dev; } ;
struct pgpath {TYPE_2__ path; } ;
struct path_selector {TYPE_1__* type; } ;
struct multipath {char const* hw_handler_name; char const* hw_handler_params; scalar_t__ retain_attached_hw_handler; } ;
struct dm_target {char* error; int /*<<< orphan*/  table; struct multipath* private; } ;
struct dm_arg_set {int argc; int /*<<< orphan*/  argv; } ;
struct TYPE_7__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_5__ {int (* add_path ) (struct path_selector*,TYPE_2__*,int,int /*<<< orphan*/ ,char**) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct pgpath* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct pgpath* FUNC1 () ; 
 struct request_queue* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct dm_target*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_target*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_arg_set*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pgpath*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int FUNC9 (struct request_queue*,char const*) ; 
 char* FUNC10 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct request_queue*) ; 
 int FUNC12 (struct request_queue*,char const*) ; 
 int FUNC13 (struct path_selector*,TYPE_2__*,int,int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static struct pgpath *FUNC14(struct dm_arg_set *as, struct path_selector *ps,
			       struct dm_target *ti)
{
	int r;
	struct pgpath *p;
	struct multipath *m = ti->private;
	struct request_queue *q = NULL;
	const char *attached_handler_name;

	/* we need at least a path arg */
	if (as->argc < 1) {
		ti->error = "no device given";
		return FUNC0(-EINVAL);
	}

	p = FUNC1();
	if (!p)
		return FUNC0(-ENOMEM);

	r = FUNC3(ti, FUNC5(as), FUNC6(ti->table),
			  &p->path.dev);
	if (r) {
		ti->error = "error getting device";
		goto bad;
	}

	if (m->retain_attached_hw_handler || m->hw_handler_name)
		q = FUNC2(p->path.dev->bdev);

	if (m->retain_attached_hw_handler) {
		attached_handler_name = FUNC10(q, GFP_KERNEL);
		if (attached_handler_name) {
			/*
			 * Reset hw_handler_name to match the attached handler
			 * and clear any hw_handler_params associated with the
			 * ignored handler.
			 *
			 * NB. This modifies the table line to show the actual
			 * handler instead of the original table passed in.
			 */
			FUNC8(m->hw_handler_name);
			m->hw_handler_name = attached_handler_name;

			FUNC8(m->hw_handler_params);
			m->hw_handler_params = NULL;
		}
	}

	if (m->hw_handler_name) {
		/*
		 * Increments scsi_dh reference, even when using an
		 * already-attached handler.
		 */
		r = FUNC9(q, m->hw_handler_name);
		if (r == -EBUSY) {
			/*
			 * Already attached to different hw_handler:
			 * try to reattach with correct one.
			 */
			FUNC11(q);
			r = FUNC9(q, m->hw_handler_name);
		}

		if (r < 0) {
			ti->error = "error attaching hardware handler";
			FUNC4(ti, p->path.dev);
			goto bad;
		}

		if (m->hw_handler_params) {
			r = FUNC12(q, m->hw_handler_params);
			if (r < 0) {
				ti->error = "unable to set hardware "
							"handler parameters";
				FUNC11(q);
				FUNC4(ti, p->path.dev);
				goto bad;
			}
		}
	}

	r = ps->type->add_path(ps, &p->path, as->argc, as->argv, &ti->error);
	if (r) {
		FUNC4(ti, p->path.dev);
		goto bad;
	}

	return p;

 bad:
	FUNC7(p);
	return FUNC0(r);
}