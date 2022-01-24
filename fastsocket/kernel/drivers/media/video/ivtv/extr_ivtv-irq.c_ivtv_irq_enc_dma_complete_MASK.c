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
typedef  int u32 ;
struct ivtv_stream {scalar_t__ sg_processed; scalar_t__ sg_processing_size; int /*<<< orphan*/  s_flags; int /*<<< orphan*/  dma_offset; } ;
struct ivtv {size_t cur_dma_stream; int dma_retries; int /*<<< orphan*/  dma_waitq; struct ivtv_stream* streams; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  dma_timer; int /*<<< orphan*/  enc_mbox; } ;

/* Variables and functions */
 int CX2341X_MBOX_MAX_DATA ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 size_t IVTV_ENC_STREAM_TYPE_VBI ; 
 int /*<<< orphan*/  IVTV_F_I_DMA ; 
 int /*<<< orphan*/  IVTV_F_S_DMA_HAS_VBI ; 
 int /*<<< orphan*/  IVTV_MBOX_DMA_END ; 
 int /*<<< orphan*/  IVTV_REG_DMASTATUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ivtv_stream*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct ivtv_stream*) ; 
 int /*<<< orphan*/  FUNC7 (struct ivtv_stream*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct ivtv *itv)
{
	u32 data[CX2341X_MBOX_MAX_DATA];
	struct ivtv_stream *s;

	FUNC5(&itv->enc_mbox, IVTV_MBOX_DMA_END, 2, data);
	FUNC0("ENC DMA COMPLETE %x %d (%d)\n", data[0], data[1], itv->cur_dma_stream);

	FUNC3(&itv->dma_timer);

	if (itv->cur_dma_stream < 0)
		return;

	s = &itv->streams[itv->cur_dma_stream];
	FUNC7(s);

	if (data[0] & 0x18) {
		FUNC1("ENC DMA ERROR %x (offset %08x, xfer %d of %d, retry %d)\n", data[0],
			s->dma_offset, s->sg_processed, s->sg_processing_size, itv->dma_retries);
		FUNC11(FUNC8(IVTV_REG_DMASTATUS) & 3, IVTV_REG_DMASTATUS);
		if (itv->dma_retries == 3) {
			/* Too many retries, give up on this frame */
			itv->dma_retries = 0;
			s->sg_processed = s->sg_processing_size;
		}
		else {
			/* Retry, starting with the first xfer segment.
			   Just retrying the current segment is not sufficient. */
			s->sg_processed = 0;
			itv->dma_retries++;
		}
	}
	if (s->sg_processed < s->sg_processing_size) {
		/* DMA next buffer */
		FUNC6(s);
		return;
	}
	FUNC2(IVTV_F_I_DMA, &itv->i_flags);
	itv->cur_dma_stream = -1;
	FUNC4(s);
	if (FUNC9(IVTV_F_S_DMA_HAS_VBI, &s->s_flags)) {
		s = &itv->streams[IVTV_ENC_STREAM_TYPE_VBI];
		FUNC4(s);
	}
	s->sg_processing_size = 0;
	s->sg_processed = 0;
	FUNC10(&itv->dma_waitq);
}