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
struct request {int /*<<< orphan*/  sense_len; scalar_t__ sense; int /*<<< orphan*/  bio; scalar_t__ special; } ;
typedef  int /*<<< orphan*/  ide_drive_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EIO ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct request*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,struct request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,void*,int) ; 

__attribute__((used)) static void FUNC6(ide_drive_t *drive, struct request *rq)
{
	/*
	 * For REQ_TYPE_SENSE, "rq->special" points to the original
	 * failed request.  Also, the sense data should be read
	 * directly from rq which might be different from the original
	 * sense buffer if it got copied during mapping.
	 */
	struct request *failed = (struct request *)rq->special;
	void *sense = FUNC1(rq->bio);

	if (failed) {
		if (failed->sense) {
			/*
			 * Sense is always read into drive->sense_data.
			 * Copy back if the failed request has its
			 * sense pointer set.
			 */
			FUNC5(failed->sense, sense, 18);
			failed->sense_len = rq->sense_len;
		}
		FUNC3(drive, failed);

		if (FUNC4(drive, failed, -EIO, FUNC2(failed)))
			FUNC0();
	} else
		FUNC3(drive, NULL);
}