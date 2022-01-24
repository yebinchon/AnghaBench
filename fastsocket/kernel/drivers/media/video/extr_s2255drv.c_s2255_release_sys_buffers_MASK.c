#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* frame; } ;
struct s2255_channel {TYPE_1__ buffer; } ;
struct TYPE_4__ {int /*<<< orphan*/ * lpvbits; } ;

/* Variables and functions */
 unsigned long SYS_FRAMES ; 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct s2255_channel *channel)
{
	unsigned long i;
	FUNC0(1, "release sys buffers\n");
	for (i = 0; i < SYS_FRAMES; i++) {
		if (channel->buffer.frame[i].lpvbits) {
			FUNC0(1, "vfree %p\n",
				channel->buffer.frame[i].lpvbits);
			FUNC1(channel->buffer.frame[i].lpvbits);
		}
		channel->buffer.frame[i].lpvbits = NULL;
	}
	return 0;
}