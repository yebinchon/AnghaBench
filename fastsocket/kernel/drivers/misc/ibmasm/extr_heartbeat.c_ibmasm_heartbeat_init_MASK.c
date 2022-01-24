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
struct service_processor {int /*<<< orphan*/ * heartbeat; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  HEARTBEAT_BUFFER_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (struct service_processor*,int /*<<< orphan*/ ) ; 

int FUNC1(struct service_processor *sp)
{
	sp->heartbeat = FUNC0(sp, HEARTBEAT_BUFFER_SIZE);
	if (sp->heartbeat == NULL)
		return -ENOMEM;

	return 0;
}