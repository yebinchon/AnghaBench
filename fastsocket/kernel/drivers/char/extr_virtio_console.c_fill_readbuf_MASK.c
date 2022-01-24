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
struct port_buffer {scalar_t__ len; scalar_t__ offset; scalar_t__ buf; } ;
struct port {int /*<<< orphan*/  inbuf_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  in_vq; struct port_buffer* inbuf; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct port_buffer*) ; 
 size_t FUNC1 (char*,scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,size_t) ; 
 size_t FUNC4 (size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct port*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static ssize_t FUNC8(struct port *port, char *out_buf, size_t out_count,
			    bool to_user)
{
	struct port_buffer *buf;
	unsigned long flags;

	if (!out_count || !FUNC5(port))
		return 0;

	buf = port->inbuf;
	out_count = FUNC4(out_count, buf->len - buf->offset);

	if (to_user) {
		ssize_t ret;

		ret = FUNC1(out_buf, buf->buf + buf->offset, out_count);
		if (ret)
			return -EFAULT;
	} else {
		FUNC3(out_buf, buf->buf + buf->offset, out_count);
	}

	buf->offset += out_count;

	if (buf->offset == buf->len) {
		/*
		 * We're done using all the data in this buffer.
		 * Re-queue so that the Host can send us more data.
		 */
		FUNC6(&port->inbuf_lock, flags);
		port->inbuf = NULL;

		if (FUNC0(port->in_vq, buf) < 0)
			FUNC2(port->dev, "failed add_buf\n");

		FUNC7(&port->inbuf_lock, flags);
	}
	/* Return the number of bytes actually copied */
	return out_count;
}