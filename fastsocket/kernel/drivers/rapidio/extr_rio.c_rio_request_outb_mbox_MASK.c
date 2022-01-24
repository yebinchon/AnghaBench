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
struct rio_mport {TYPE_1__* outb_msg; int /*<<< orphan*/ * riores; } ;
struct resource {int dummy; } ;
struct TYPE_2__ {void (* mcback ) (struct rio_mport*,void*,int,int) ;struct resource* res; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t RIO_OUTB_MBOX_RESOURCE ; 
 int /*<<< orphan*/  FUNC0 (struct resource*) ; 
 struct resource* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct resource*) ; 
 int /*<<< orphan*/  FUNC3 (struct resource*,int,int) ; 
 int FUNC4 (struct rio_mport*,void*,int,int) ; 

int FUNC5(struct rio_mport *mport,
			  void *dev_id,
			  int mbox,
			  int entries,
			  void (*moutb) (struct rio_mport * mport, void *dev_id, int mbox, int slot))
{
	int rc = 0;

	struct resource *res = FUNC1(sizeof(struct resource), GFP_KERNEL);

	if (res) {
		FUNC3(res, mbox, mbox);

		/* Make sure this outbound mailbox isn't in use */
		if ((rc =
		     FUNC2(&mport->riores[RIO_OUTB_MBOX_RESOURCE],
				      res)) < 0) {
			FUNC0(res);
			goto out;
		}

		mport->outb_msg[mbox].res = res;

		/* Hook the inbound message callback */
		mport->outb_msg[mbox].mcback = moutb;

		rc = FUNC4(mport, dev_id, mbox, entries);
	} else
		rc = -ENOMEM;

      out:
	return rc;
}