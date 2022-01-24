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
struct nvbios_init {int execute; int /*<<< orphan*/  offset; int /*<<< orphan*/  crtc; int /*<<< orphan*/  outp; int /*<<< orphan*/  bios; int /*<<< orphan*/  subdev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * script; } ;
struct dp_state {TYPE_1__ info; int /*<<< orphan*/  head; int /*<<< orphan*/  outp; int /*<<< orphan*/  disp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvbios_init*) ; 

__attribute__((used)) static void
FUNC3(struct dp_state *dp)
{
	struct nvbios_init init = {
		.subdev = FUNC1(dp->disp),
		.bios = FUNC0(dp->disp),
		.outp = dp->outp,
		.crtc = dp->head,
		.execute = 1,
	};

	/* post-train script */
	init.offset = dp->info.script[1],
	FUNC2(&init);
}