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
struct port_buffer {int dummy; } ;
struct port {int /*<<< orphan*/  outvq_lock; int /*<<< orphan*/  out_vq; int /*<<< orphan*/  inbuf_lock; int /*<<< orphan*/  in_vq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct port*) ; 
 int /*<<< orphan*/  FUNC1 (struct port_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct port_buffer* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct port *port)
{
	struct port_buffer *buf;

	FUNC3(&port->inbuf_lock);
	/* Remove unused data this port might have received. */
	FUNC0(port);

	/* Remove buffers we queued up for the Host to send us data in. */
	while ((buf = FUNC5(port->in_vq)))
		FUNC1(buf);
	FUNC4(&port->inbuf_lock);

	FUNC3(&port->outvq_lock);
	FUNC2(port);

	/* Free pending buffers from the out-queue. */
	while ((buf = FUNC5(port->out_vq)))
		FUNC1(buf);
	FUNC4(&port->outvq_lock);
}