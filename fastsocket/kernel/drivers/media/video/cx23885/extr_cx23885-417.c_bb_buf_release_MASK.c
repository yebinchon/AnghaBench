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
struct videobuf_queue {int dummy; } ;
struct videobuf_buffer {int dummy; } ;
struct cx23885_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct videobuf_queue*,struct cx23885_buffer*) ; 

__attribute__((used)) static void FUNC1(struct videobuf_queue *q,
	struct videobuf_buffer *vb)
{
	FUNC0(q, (struct cx23885_buffer *)vb);
}