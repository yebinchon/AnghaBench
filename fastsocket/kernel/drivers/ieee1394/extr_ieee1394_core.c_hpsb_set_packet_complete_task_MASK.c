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
struct hpsb_packet {void (* complete_routine ) (void*) ;void* complete_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct hpsb_packet *packet,
				   void (*routine)(void *), void *data)
{
	FUNC0(packet->complete_routine != NULL);
	packet->complete_routine = routine;
	packet->complete_data = data;
	return;
}