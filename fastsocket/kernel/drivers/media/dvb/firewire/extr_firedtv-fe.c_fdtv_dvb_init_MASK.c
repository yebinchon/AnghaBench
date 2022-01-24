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
struct TYPE_3__ {int /*<<< orphan*/  num; } ;
struct firedtv {TYPE_2__* backend; int /*<<< orphan*/  device; int /*<<< orphan*/  isochannel; int /*<<< orphan*/  subunit; TYPE_1__ adapter; } ;
struct dvb_frontend {struct firedtv* sec_priv; } ;
struct TYPE_4__ {int (* start_iso ) (struct firedtv*) ;} ;

/* Variables and functions */
 int FUNC0 (struct firedtv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct firedtv*) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe)
{
	struct firedtv *fdtv = fe->sec_priv;
	int err;

	/* FIXME - allocate free channel at IRM */
	fdtv->isochannel = fdtv->adapter.num;

	err = FUNC0(fdtv, fdtv->subunit,
					  fdtv->isochannel);
	if (err) {
		FUNC1(fdtv->device,
			"could not establish point to point connection\n");
		return err;
	}

	return fdtv->backend->start_iso(fdtv);
}