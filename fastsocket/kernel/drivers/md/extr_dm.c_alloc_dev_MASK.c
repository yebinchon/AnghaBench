#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  bi_rw; scalar_t__ bi_bdev; } ;
struct mapped_device {scalar_t__ queue; TYPE_1__* disk; int /*<<< orphan*/  wq; TYPE_3__ flush_bio; scalar_t__ bdev; int /*<<< orphan*/  name; int /*<<< orphan*/  eventq; int /*<<< orphan*/  work; int /*<<< orphan*/  wait; int /*<<< orphan*/ * pending; int /*<<< orphan*/  uevent_lock; int /*<<< orphan*/  uevent_list; int /*<<< orphan*/  uevent_seq; int /*<<< orphan*/  event_nr; int /*<<< orphan*/  open_count; int /*<<< orphan*/  holders; int /*<<< orphan*/  map_lock; int /*<<< orphan*/  deferred_lock; int /*<<< orphan*/  type_lock; int /*<<< orphan*/  suspend_lock; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  type; } ;
struct TYPE_7__ {int first_minor; int /*<<< orphan*/  disk_name; struct mapped_device* private_data; scalar_t__ queue; int /*<<< orphan*/ * fops; int /*<<< orphan*/  major; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int DM_ANY_MINOR ; 
 int /*<<< orphan*/  DM_TYPE_NONE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* MINOR_ALLOCED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  WRITE_FLUSH ; 
 int /*<<< orphan*/  _major ; 
 int /*<<< orphan*/  _minor_idr ; 
 int /*<<< orphan*/  _minor_lock ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dm_blk_dops ; 
 int /*<<< orphan*/  FUNC15 (struct mapped_device*) ; 
 int /*<<< orphan*/  dm_wq_work ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 void* FUNC18 (int /*<<< orphan*/ *,struct mapped_device*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct mapped_device*) ; 
 struct mapped_device* FUNC22 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int FUNC25 (int*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mapped_device *FUNC34(int minor)
{
	int r;
	struct mapped_device *md = FUNC22(sizeof(*md), GFP_KERNEL);
	void *old_md;

	if (!md) {
		FUNC1("unable to allocate device, out of memory.");
		return NULL;
	}

	if (!FUNC33(THIS_MODULE))
		goto bad_module_get;

	/* get a minor number for the dev */
	if (minor == DM_ANY_MINOR)
		r = FUNC25(&minor);
	else
		r = FUNC28(minor);
	if (r < 0)
		goto bad_minor;

	md->type = DM_TYPE_NONE;
	FUNC19(&md->io_lock);
	FUNC24(&md->suspend_lock);
	FUNC24(&md->type_lock);
	FUNC30(&md->deferred_lock);
	FUNC27(&md->map_lock);
	FUNC7(&md->holders, 1);
	FUNC7(&md->open_count, 0);
	FUNC7(&md->event_nr, 0);
	FUNC7(&md->uevent_seq, 0);
	FUNC2(&md->uevent_list);
	FUNC30(&md->uevent_lock);

	md->queue = FUNC10(GFP_KERNEL);
	if (!md->queue)
		goto bad_queue;

	FUNC15(md);

	md->disk = FUNC6(1);
	if (!md->disk)
		goto bad_disk;

	FUNC7(&md->pending[0], 0);
	FUNC7(&md->pending[1], 0);
	FUNC20(&md->wait);
	FUNC3(&md->work, dm_wq_work);
	FUNC20(&md->eventq);

	md->disk->major = _major;
	md->disk->first_minor = minor;
	md->disk->fops = &dm_blk_dops;
	md->disk->queue = md->queue;
	md->disk->private_data = md;
	FUNC32(md->disk->disk_name, "dm-%d", minor);
	FUNC5(md->disk);
	FUNC16(md->name, FUNC4(_major, minor));

	md->wq = FUNC12("kdmflush");
	if (!md->wq)
		goto bad_thread;

	md->bdev = FUNC8(md->disk, 0);
	if (!md->bdev)
		goto bad_bdev;

	FUNC9(&md->flush_bio);
	md->flush_bio.bi_bdev = md->bdev;
	md->flush_bio.bi_rw = WRITE_FLUSH;

	/* Populate the mapping, nobody knows we exist yet */
	FUNC29(&_minor_lock);
	old_md = FUNC18(&_minor_idr, md, minor);
	FUNC31(&_minor_lock);

	FUNC0(old_md != MINOR_ALLOCED);

	return md;

bad_bdev:
	FUNC14(md->wq);
bad_thread:
	FUNC13(md->disk);
	FUNC26(md->disk);
bad_disk:
	FUNC11(md->queue);
bad_queue:
	FUNC17(minor);
bad_minor:
	FUNC23(THIS_MODULE);
bad_module_get:
	FUNC21(md);
	return NULL;
}