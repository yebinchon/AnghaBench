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
struct videobuf_queue {struct cx23885_tsport* priv_data; } ;
struct videobuf_buffer {int dummy; } ;
struct cx23885_tsport {int dummy; } ;
struct cx23885_buffer {int dummy; } ;
typedef  enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;

/* Variables and functions */
 int FUNC0 (struct videobuf_queue*,struct cx23885_tsport*,struct cx23885_buffer*,int) ; 

__attribute__((used)) static int FUNC1(struct videobuf_queue *q,
			   struct videobuf_buffer *vb, enum v4l2_field field)
{
	struct cx23885_tsport *port = q->priv_data;
	return FUNC0(q, port, (struct cx23885_buffer *)vb, field);
}