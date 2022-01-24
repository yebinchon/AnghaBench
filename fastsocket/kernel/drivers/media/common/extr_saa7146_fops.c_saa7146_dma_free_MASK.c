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
struct saa7146_dev {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;
struct saa7146_buf {TYPE_1__ vb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  VIDEOBUF_NEEDS_INIT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct videobuf_dmabuf*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct videobuf_dmabuf*) ; 
 struct videobuf_dmabuf* FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (struct videobuf_queue*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct saa7146_dev *dev,struct videobuf_queue *q,
						struct saa7146_buf *buf)
{
	struct videobuf_dmabuf *dma=FUNC5(&buf->vb);
	FUNC1(("dev:%p, buf:%p\n",dev,buf));

	FUNC0(FUNC2());

	FUNC6(q, &buf->vb, 0, 0);
	FUNC4(q->dev, dma);
	FUNC3(dma);
	buf->vb.state = VIDEOBUF_NEEDS_INIT;
}