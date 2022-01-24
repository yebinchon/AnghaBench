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
struct ivtv_stream {int /*<<< orphan*/  s_flags; } ;
struct ivtv {struct ivtv_stream* streams; int /*<<< orphan*/  enc_mbox; } ;

/* Variables and functions */
 int CX2341X_MBOX_MAX_DATA ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 int /*<<< orphan*/  IVTV_F_S_DMA_PENDING ; 
 int /*<<< orphan*/  IVTV_F_S_PIO_PENDING ; 
 int /*<<< orphan*/  IVTV_MBOX_DMA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 size_t* ivtv_stream_map ; 
 scalar_t__ FUNC3 (struct ivtv_stream*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ivtv_stream*,int*) ; 

__attribute__((used)) static void FUNC6(struct ivtv *itv)
{
	u32 data[CX2341X_MBOX_MAX_DATA];
	struct ivtv_stream *s;

	/* Get DMA destination and size arguments from card */
	FUNC2(&itv->enc_mbox, IVTV_MBOX_DMA, 7, data);
	FUNC0("ENC START CAP %d: %08x %08x\n", data[0], data[1], data[2]);

	if (data[0] > 2 || data[1] == 0 || data[2] == 0) {
		FUNC1("Unknown input: %08x %08x %08x\n",
				data[0], data[1], data[2]);
		return;
	}
	s = &itv->streams[ivtv_stream_map[data[0]]];
	if (!FUNC5(s, data)) {
		FUNC4(FUNC3(s) ? IVTV_F_S_PIO_PENDING : IVTV_F_S_DMA_PENDING, &s->s_flags);
	}
}