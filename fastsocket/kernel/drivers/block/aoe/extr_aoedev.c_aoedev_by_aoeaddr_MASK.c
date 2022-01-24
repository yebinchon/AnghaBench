#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* ulong ;
struct TYPE_3__ {scalar_t__ expires; int /*<<< orphan*/  function; void* data; } ;
struct aoedev {void* aoemajor; int aoeminor; int flags; int ref; int ntargets; struct aoedev* next; int /*<<< orphan*/  rttdev; int /*<<< orphan*/  rttavg; void* sysminor; int /*<<< orphan*/  rexmitq; int /*<<< orphan*/ * factive; void* targets; void* tgt; int /*<<< orphan*/ * bufpool; TYPE_1__ timer; int /*<<< orphan*/  skbpool; int /*<<< orphan*/  lock; int /*<<< orphan*/  work; } ;

/* Variables and functions */
 int DEVFL_TKILL ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int NFACTIVE ; 
 int NTARGETS ; 
 int /*<<< orphan*/  RTTAVG_INIT ; 
 int /*<<< orphan*/  RTTDEV_INIT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  aoecmd_sleepwork ; 
 struct aoedev* devlist ; 
 int /*<<< orphan*/  devlist_lock ; 
 int /*<<< orphan*/  dummy_timer ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 
 void* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct aoedev*) ; 
 scalar_t__ FUNC6 (void**,void*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,void*) ; 

struct aoedev *
FUNC13(ulong maj, int min, int do_alloc)
{
	struct aoedev *d;
	int i;
	ulong flags;
	ulong sysminor = 0;

	FUNC10(&devlist_lock, flags);

	for (d=devlist; d; d=d->next)
		if (d->aoemajor == maj && d->aoeminor == min) {
			FUNC8(&d->lock);
			if (d->flags & DEVFL_TKILL) {
				FUNC11(&d->lock);
				d = NULL;
				goto out;
			}
			d->ref++;
			FUNC11(&d->lock);
			break;
		}
	if (d || !do_alloc || FUNC6(&sysminor, maj, min) < 0)
		goto out;
	d = FUNC4(1, sizeof *d, GFP_ATOMIC);
	if (!d)
		goto out;
	d->targets = FUNC4(NTARGETS, sizeof(*d->targets), GFP_ATOMIC);
	if (!d->targets) {
		FUNC5(d);
		d = NULL;
		goto out;
	}
	d->ntargets = NTARGETS;
	FUNC1(&d->work, aoecmd_sleepwork);
	FUNC9(&d->lock);
	FUNC7(&d->skbpool);
	FUNC3(&d->timer);
	d->timer.data = (ulong) d;
	d->timer.function = dummy_timer;
	d->timer.expires = jiffies + HZ;
	FUNC2(&d->timer);
	d->bufpool = NULL;	/* defer to aoeblk_gdalloc */
	d->tgt = d->targets;
	d->ref = 1;
	for (i = 0; i < NFACTIVE; i++)
		FUNC0(&d->factive[i]);
	FUNC0(&d->rexmitq);
	d->sysminor = sysminor;
	d->aoemajor = maj;
	d->aoeminor = min;
	d->rttavg = RTTAVG_INIT;
	d->rttdev = RTTDEV_INIT;
	d->next = devlist;
	devlist = d;
 out:
	FUNC12(&devlist_lock, flags);
	return d;
}