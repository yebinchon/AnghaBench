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
struct TYPE_2__ {scalar_t__ unacked_exist; } ;
struct md_rdev {int /*<<< orphan*/  flags; TYPE_1__ badblocks; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  Blocked ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  Replacement ; 
 int /*<<< orphan*/  WantReplacement ; 
 int /*<<< orphan*/  WriteErrorSeen ; 
 int /*<<< orphan*/  WriteMostly ; 
 scalar_t__ FUNC0 (char*,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC2(struct md_rdev *rdev, char *page)
{
	char *sep = "";
	size_t len = 0;

	if (FUNC1(Faulty, &rdev->flags) ||
	    rdev->badblocks.unacked_exist) {
		len+= FUNC0(page+len, "%sfaulty",sep);
		sep = ",";
	}
	if (FUNC1(In_sync, &rdev->flags)) {
		len += FUNC0(page+len, "%sin_sync",sep);
		sep = ",";
	}
	if (FUNC1(WriteMostly, &rdev->flags)) {
		len += FUNC0(page+len, "%swrite_mostly",sep);
		sep = ",";
	}
	if (FUNC1(Blocked, &rdev->flags) ||
	    (rdev->badblocks.unacked_exist
	     && !FUNC1(Faulty, &rdev->flags))) {
		len += FUNC0(page+len, "%sblocked", sep);
		sep = ",";
	}
	if (!FUNC1(Faulty, &rdev->flags) &&
	    !FUNC1(In_sync, &rdev->flags)) {
		len += FUNC0(page+len, "%sspare", sep);
		sep = ",";
	}
	if (FUNC1(WriteErrorSeen, &rdev->flags)) {
		len += FUNC0(page+len, "%swrite_error", sep);
		sep = ",";
	}
	if (FUNC1(WantReplacement, &rdev->flags)) {
		len += FUNC0(page+len, "%swant_replacement", sep);
		sep = ",";
	}
	if (FUNC1(Replacement, &rdev->flags)) {
		len += FUNC0(page+len, "%sreplacement", sep);
		sep = ",";
	}

	return len+FUNC0(page+len, "\n");
}