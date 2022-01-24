#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct videobuf_queue {int /*<<< orphan*/  dev; } ;
struct videobuf_dmabuf {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;
struct saa7134_buf {TYPE_1__ vb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VIDEOBUF_NEEDS_INIT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct videobuf_dmabuf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct videobuf_dmabuf*) ; 
 struct videobuf_dmabuf* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct videobuf_queue*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(struct videobuf_queue *q,struct saa7134_buf *buf)
{
	struct videobuf_dmabuf *dma=FUNC4(&buf->vb);
	FUNC0(FUNC1());

	FUNC5(q, &buf->vb, 0, 0);
	FUNC3(q->dev, dma);
	FUNC2(dma);
	buf->vb.state = VIDEOBUF_NEEDS_INIT;
}