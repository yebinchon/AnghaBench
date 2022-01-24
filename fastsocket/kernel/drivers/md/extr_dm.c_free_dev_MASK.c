#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct mapped_device {int /*<<< orphan*/  queue; TYPE_1__* disk; scalar_t__ bs; scalar_t__ io_pool; scalar_t__ tio_pool; int /*<<< orphan*/  wq; int /*<<< orphan*/  bdev; } ;
struct TYPE_5__ {int /*<<< orphan*/ * private_data; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  _minor_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct mapped_device*) ; 

__attribute__((used)) static void FUNC16(struct mapped_device *md)
{
	int minor = FUNC0(FUNC7(md->disk));

	FUNC15(md);
	FUNC1(md->bdev);
	FUNC6(md->wq);
	if (md->tio_pool)
		FUNC10(md->tio_pool);
	if (md->io_pool)
		FUNC10(md->io_pool);
	if (md->bs)
		FUNC2(md->bs);
	FUNC4(md->disk);
	FUNC5(md->disk);
	FUNC8(minor);

	FUNC13(&_minor_lock);
	md->disk->private_data = NULL;
	FUNC14(&_minor_lock);

	FUNC12(md->disk);
	FUNC3(md->queue);
	FUNC11(THIS_MODULE);
	FUNC9(md);
}