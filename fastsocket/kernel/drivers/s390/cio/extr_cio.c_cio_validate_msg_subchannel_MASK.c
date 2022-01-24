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
struct subchannel {int /*<<< orphan*/  schib; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct subchannel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct subchannel *sch)
{
	/* Initialization for message subchannels. */
	if (!FUNC1(&sch->schib))
		return -ENODEV;

	/* Devno is valid. */
	return FUNC0(sch);
}