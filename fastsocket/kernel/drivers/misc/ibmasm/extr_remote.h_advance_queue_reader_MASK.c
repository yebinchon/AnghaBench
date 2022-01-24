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
struct service_processor {int dummy; } ;

/* Variables and functions */
 unsigned long REMOTE_QUEUE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct service_processor*,unsigned long) ; 

__attribute__((used)) static inline int FUNC1(struct service_processor *sp, unsigned long reader)
{
	reader++;
	if (reader == REMOTE_QUEUE_SIZE)
		reader = 0;

	FUNC0(sp, reader);
	return reader;
}