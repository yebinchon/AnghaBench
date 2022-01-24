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
struct tape_device {int dummy; } ;
struct request_queue {scalar_t__ queuedata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct tape_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct tape_device*) ; 

__attribute__((used)) static void
FUNC3(struct request_queue *queue)
{
	struct tape_device *device;

	device = (struct tape_device *) queue->queuedata;
	FUNC1(6, "tapeblock_request_fn(device=%p)\n", device);
	FUNC0(device == NULL);
	FUNC2(device);
}