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
struct videobuf_dvb_frontends {int /*<<< orphan*/  lock; int /*<<< orphan*/  felist; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct videobuf_dvb_frontend {int id; int /*<<< orphan*/  felist; TYPE_1__ dvb; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct videobuf_dvb_frontend* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct videobuf_dvb_frontend *FUNC5(
	struct videobuf_dvb_frontends *f, int id)
{
	struct videobuf_dvb_frontend *fe;

	fe = FUNC0(sizeof(struct videobuf_dvb_frontend), GFP_KERNEL);
	if (fe == NULL)
		goto fail_alloc;

	fe->id = id;
	FUNC2(&fe->dvb.lock);

	FUNC3(&f->lock);
	FUNC1(&fe->felist, &f->felist);
	FUNC4(&f->lock);

fail_alloc:
	return fe;
}