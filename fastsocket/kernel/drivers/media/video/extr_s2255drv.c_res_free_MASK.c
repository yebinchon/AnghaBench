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
struct s2255_fh {scalar_t__ resources; struct s2255_channel* channel; } ;
struct s2255_channel {scalar_t__ resources; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 

__attribute__((used)) static void FUNC1(struct s2255_fh *fh)
{
	struct s2255_channel *channel = fh->channel;
	channel->resources = 0;
	fh->resources = 0;
	FUNC0(1, "res: put\n");
}