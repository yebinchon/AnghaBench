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
struct hpsb_packet {int dummy; } ;
struct completion {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  complete_packet ; 
 int FUNC0 (struct hpsb_packet*) ; 
 int /*<<< orphan*/  FUNC1 (struct hpsb_packet*,int /*<<< orphan*/ ,struct completion*) ; 
 int /*<<< orphan*/  FUNC2 (struct completion*) ; 
 int /*<<< orphan*/  FUNC3 (struct completion*) ; 

int FUNC4(struct hpsb_packet *packet)
{
	struct completion done;
	int retval;

	FUNC2(&done);
	FUNC1(packet, complete_packet, &done);
	retval = FUNC0(packet);
	if (retval == 0)
		FUNC3(&done);

	return retval;
}