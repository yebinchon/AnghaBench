#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct sg_list* data; } ;
struct splice_desc {size_t total_len; unsigned int flags; TYPE_1__ u; int /*<<< orphan*/  pos; } ;
struct sg_list {int /*<<< orphan*/  sg; scalar_t__ len; scalar_t__ n; scalar_t__ size; } ;
struct port_buffer {int /*<<< orphan*/  sg; } ;
struct port {int /*<<< orphan*/  out_vq; } ;
struct pipe_inode_info {scalar_t__ nrbufs; } ;
struct file {int f_flags; struct port* private_data; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct port*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,struct port_buffer*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pipe_inode_info*,struct splice_desc*,int /*<<< orphan*/ ) ; 
 struct port_buffer* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct pipe_inode_info*) ; 
 int /*<<< orphan*/  pipe_to_sg ; 
 int /*<<< orphan*/  FUNC6 (struct pipe_inode_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct port*,int) ; 

__attribute__((used)) static ssize_t FUNC10(struct pipe_inode_info *pipe,
				      struct file *filp, loff_t *ppos,
				      size_t len, unsigned int flags)
{
	struct port *port = filp->private_data;
	struct sg_list sgl;
	ssize_t ret;
	struct port_buffer *buf;
	struct splice_desc sd = {
		.total_len = len,
		.flags = flags,
		.pos = *ppos,
		.u.data = &sgl,
	};

	/*
	 * pipe->nrbufs == 0 means there are no data to transfer,
	 * so this returns just 0 for no data.
	 */
	FUNC5(pipe);
	if (!pipe->nrbufs) {
		ret = 0;
		goto error_out;
	}

	ret = FUNC9(port, filp->f_flags & O_NONBLOCK);
	if (ret < 0)
		goto error_out;

	buf = FUNC2(port->out_vq, 0, pipe->nrbufs);
	if (!buf) {
		ret = -ENOMEM;
		goto error_out;
	}

	sgl.n = 0;
	sgl.len = 0;
	sgl.size = pipe->nrbufs;
	sgl.sg = buf->sg;
	FUNC7(sgl.sg, sgl.size);
	ret = FUNC1(pipe, &sd, pipe_to_sg);
	FUNC6(pipe);
	if (FUNC4(ret > 0))
		ret = FUNC0(port, buf->sg, sgl.n, sgl.len, buf, true);

	if (FUNC8(ret <= 0))
		FUNC3(sgl.sg);
	return ret;

error_out:
	FUNC6(pipe);
	return ret;
}