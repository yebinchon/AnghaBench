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
struct request_queue {struct mapped_device* queuedata; } ;
struct mapped_device {int /*<<< orphan*/  io_lock; int /*<<< orphan*/  flags; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  part0; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMF_BLOCK_IO_FOR_SUSPEND ; 
 scalar_t__ READA ; 
 int /*<<< orphan*/  FUNC0 (struct mapped_device*,struct bio*) ; 
 int FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 TYPE_1__* FUNC5 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ios ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct mapped_device*,struct bio*) ; 
 int /*<<< orphan*/ * sectors ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct request_queue *q, struct bio *bio)
{
	int rw = FUNC1(bio);
	struct mapped_device *md = q->queuedata;
	int cpu;

	FUNC6(&md->io_lock);

	cpu = FUNC9();
	FUNC8(cpu, &FUNC5(md)->part0, ios[rw]);
	FUNC7(cpu, &FUNC5(md)->part0, sectors[rw], FUNC4(bio));
	FUNC10();

	/* if we're suspended, we have to queue this io for later */
	if (FUNC13(FUNC12(DMF_BLOCK_IO_FOR_SUSPEND, &md->flags))) {
		FUNC14(&md->io_lock);

		if (FUNC3(bio) != READA)
			FUNC11(md, bio);
		else
			FUNC2(bio);
		return 0;
	}

	FUNC0(md, bio);
	FUNC14(&md->io_lock);
	return 0;
}