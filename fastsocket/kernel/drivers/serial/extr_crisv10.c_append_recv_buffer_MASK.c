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
struct etrax_recv_buffer {scalar_t__ length; struct etrax_recv_buffer* next; } ;
struct e100_serial {scalar_t__ recv_cnt; scalar_t__ max_recv_cnt; struct etrax_recv_buffer* last_recv_buffer; struct etrax_recv_buffer* first_recv_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 

__attribute__((used)) static void
FUNC2(struct e100_serial *info, struct etrax_recv_buffer *buffer)
{
	unsigned long flags;

	FUNC1(flags);

	if (!info->first_recv_buffer)
		info->first_recv_buffer = buffer;
	else
		info->last_recv_buffer->next = buffer;

	info->last_recv_buffer = buffer;

	info->recv_cnt += buffer->length;
	if (info->recv_cnt > info->max_recv_cnt)
		info->max_recv_cnt = info->recv_cnt;

	FUNC0(flags);
}