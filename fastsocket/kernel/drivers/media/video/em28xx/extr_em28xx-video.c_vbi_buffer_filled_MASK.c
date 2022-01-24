#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct em28xx_dmaqueue {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  done; int /*<<< orphan*/  queue; int /*<<< orphan*/  ts; int /*<<< orphan*/  field_count; int /*<<< orphan*/  state; int /*<<< orphan*/  i; } ;
struct em28xx_buffer {TYPE_2__ vb; } ;
struct TYPE_3__ {int /*<<< orphan*/ * vbi_buf; } ;
struct em28xx {TYPE_1__ isoc_ctl; } ;

/* Variables and functions */
 int /*<<< orphan*/  VIDEOBUF_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct em28xx_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct em28xx *dev,
				     struct em28xx_dmaqueue *dma_q,
				     struct em28xx_buffer *buf)
{
	/* Advice that buffer was filled */
	FUNC1("[%p/%d] wakeup\n", buf, buf->vb.i);

	buf->vb.state = VIDEOBUF_DONE;
	buf->vb.field_count++;
	FUNC0(&buf->vb.ts);

	dev->isoc_ctl.vbi_buf = NULL;

	FUNC2(&buf->vb.queue);
	FUNC3(&buf->vb.done);
}