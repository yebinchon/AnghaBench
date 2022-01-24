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
struct qeth_cmd_buffer {int dummy; } ;
struct qeth_channel {int /*<<< orphan*/  iob_lock; } ;

/* Variables and functions */
 struct qeth_cmd_buffer* FUNC0 (struct qeth_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct qeth_cmd_buffer *FUNC3(struct qeth_channel *channel)
{
	struct qeth_cmd_buffer *buffer = NULL;
	unsigned long flags;

	FUNC1(&channel->iob_lock, flags);
	buffer = FUNC0(channel);
	FUNC2(&channel->iob_lock, flags);
	return buffer;
}