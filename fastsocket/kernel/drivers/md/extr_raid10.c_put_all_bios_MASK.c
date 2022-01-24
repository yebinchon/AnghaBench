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
struct r10conf {int copies; } ;
struct r10bio {scalar_t__ read_slot; TYPE_1__* devs; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct bio* repl_bio; struct bio* bio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 

__attribute__((used)) static void FUNC2(struct r10conf *conf, struct r10bio *r10_bio)
{
	int i;

	for (i = 0; i < conf->copies; i++) {
		struct bio **bio = & r10_bio->devs[i].bio;
		if (!FUNC0(*bio))
			FUNC1(*bio);
		*bio = NULL;
		bio = &r10_bio->devs[i].repl_bio;
		if (r10_bio->read_slot < 0 && !FUNC0(*bio))
			FUNC1(*bio);
		*bio = NULL;
	}
}