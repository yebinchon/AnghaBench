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
typedef  int /*<<< orphan*/  u32 ;
struct ivtv_stream {int /*<<< orphan*/  s_flags; } ;
struct ivtv {struct ivtv_stream* streams; } ;

/* Variables and functions */
 int CX2341X_MBOX_MAX_DATA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 size_t IVTV_ENC_STREAM_TYPE_VBI ; 
 int /*<<< orphan*/  IVTV_F_S_DMA_PENDING ; 
 int /*<<< orphan*/  IVTV_F_S_PIO_PENDING ; 
 scalar_t__ FUNC1 (struct ivtv_stream*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ivtv_stream*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ivtv *itv)
{
	u32 data[CX2341X_MBOX_MAX_DATA];
	struct ivtv_stream *s;

	FUNC0("ENC START VBI CAP\n");
	s = &itv->streams[IVTV_ENC_STREAM_TYPE_VBI];

	if (!FUNC3(s, data))
		FUNC2(FUNC1(s) ? IVTV_F_S_PIO_PENDING : IVTV_F_S_DMA_PENDING, &s->s_flags);
}