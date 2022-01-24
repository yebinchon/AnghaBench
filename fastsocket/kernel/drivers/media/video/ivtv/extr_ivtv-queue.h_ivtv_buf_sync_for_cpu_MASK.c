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
struct ivtv_stream {int /*<<< orphan*/  dma; scalar_t__ buf_size; TYPE_1__* itv; } ;
struct ivtv_buffer {int /*<<< orphan*/  dma_handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ivtv_stream*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct ivtv_stream *s, struct ivtv_buffer *buf)
{
	if (FUNC0(s))
		FUNC1(s->itv->pdev, buf->dma_handle,
				s->buf_size + 256, s->dma);
}