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
struct virtqueue {int dummy; } ;
struct scatterlist {int dummy; } ;
struct port_buffer {int /*<<< orphan*/  size; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct virtqueue*,struct scatterlist*,int /*<<< orphan*/ ,int,struct port_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct virtqueue*) ; 

__attribute__((used)) static int FUNC3(struct virtqueue *vq, struct port_buffer *buf)
{
	struct scatterlist sg[1];
	int ret;

	FUNC0(sg, buf->buf, buf->size);

	ret = FUNC1(vq, sg, 0, 1, buf);
	FUNC2(vq);
	return ret;
}