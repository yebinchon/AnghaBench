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
struct ivtv_stream {int buffers; scalar_t__ dma; int buf_size; int /*<<< orphan*/  name; int /*<<< orphan*/  q_free; struct ivtv* itv; int /*<<< orphan*/ * sg_dma; void* sg_handle; struct ivtv_buffer* sg_processing; struct ivtv_buffer* sg_pending; scalar_t__ sg_processing_size; scalar_t__ sg_pending_size; } ;
struct ivtv_sg_host_element {int dummy; } ;
struct ivtv_sg_element {int dummy; } ;
struct ivtv_buffer {int /*<<< orphan*/ * buf; void* dma_handle; int /*<<< orphan*/  list; } ;
struct ivtv {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ PCI_DMA_NONE ; 
 scalar_t__ PCI_DMA_TODEVICE ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  FUNC3 (struct ivtv_stream*,struct ivtv_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv_stream*,struct ivtv_buffer*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct ivtv_stream*) ; 
 int /*<<< orphan*/  FUNC6 (struct ivtv_stream*) ; 
 int /*<<< orphan*/  FUNC7 (struct ivtv_stream*) ; 
 int /*<<< orphan*/  FUNC8 (struct ivtv_buffer*) ; 
 int /*<<< orphan*/ * FUNC9 (int,int) ; 
 void* FUNC10 (int,int) ; 
 void* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__) ; 

int FUNC12(struct ivtv_stream *s)
{
	struct ivtv *itv = s->itv;
	int SGsize = sizeof(struct ivtv_sg_host_element) * s->buffers;
	int i;

	if (s->buffers == 0)
		return 0;

	FUNC1("Allocate %s%s stream: %d x %d buffers (%dkB total)\n",
		s->dma != PCI_DMA_NONE ? "DMA " : "",
		s->name, s->buffers, s->buf_size, s->buffers * s->buf_size / 1024);

	s->sg_pending = FUNC10(SGsize, GFP_KERNEL|__GFP_NOWARN);
	if (s->sg_pending == NULL) {
		FUNC2("Could not allocate sg_pending for %s stream\n", s->name);
		return -ENOMEM;
	}
	s->sg_pending_size = 0;

	s->sg_processing = FUNC10(SGsize, GFP_KERNEL|__GFP_NOWARN);
	if (s->sg_processing == NULL) {
		FUNC2("Could not allocate sg_processing for %s stream\n", s->name);
		FUNC8(s->sg_pending);
		s->sg_pending = NULL;
		return -ENOMEM;
	}
	s->sg_processing_size = 0;

	s->sg_dma = FUNC10(sizeof(struct ivtv_sg_element),
					GFP_KERNEL|__GFP_NOWARN);
	if (s->sg_dma == NULL) {
		FUNC2("Could not allocate sg_dma for %s stream\n", s->name);
		FUNC8(s->sg_pending);
		s->sg_pending = NULL;
		FUNC8(s->sg_processing);
		s->sg_processing = NULL;
		return -ENOMEM;
	}
	if (FUNC5(s)) {
		s->sg_handle = FUNC11(itv->pdev, s->sg_dma,
				sizeof(struct ivtv_sg_element), PCI_DMA_TODEVICE);
		FUNC7(s);
	}

	/* allocate stream buffers. Initially all buffers are in q_free. */
	for (i = 0; i < s->buffers; i++) {
		struct ivtv_buffer *buf = FUNC10(sizeof(struct ivtv_buffer),
						GFP_KERNEL|__GFP_NOWARN);

		if (buf == NULL)
			break;
		buf->buf = FUNC9(s->buf_size + 256, GFP_KERNEL|__GFP_NOWARN);
		if (buf->buf == NULL) {
			FUNC8(buf);
			break;
		}
		FUNC0(&buf->list);
		if (FUNC5(s)) {
			buf->dma_handle = FUNC11(s->itv->pdev,
				buf->buf, s->buf_size + 256, s->dma);
			FUNC3(s, buf);
		}
		FUNC4(s, buf, &s->q_free);
	}
	if (i == s->buffers)
		return 0;
	FUNC2("Couldn't allocate buffers for %s stream\n", s->name);
	FUNC6(s);
	return -ENOMEM;
}