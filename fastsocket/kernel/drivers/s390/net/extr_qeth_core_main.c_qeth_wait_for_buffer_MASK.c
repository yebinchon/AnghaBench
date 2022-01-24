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
struct qeth_channel {int /*<<< orphan*/  wait_q; } ;

/* Variables and functions */
 struct qeth_cmd_buffer* FUNC0 (struct qeth_channel*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct qeth_cmd_buffer *FUNC2(struct qeth_channel *channel)
{
	struct qeth_cmd_buffer *buffer;
	FUNC1(channel->wait_q,
		   ((buffer = FUNC0(channel)) != NULL));
	return buffer;
}