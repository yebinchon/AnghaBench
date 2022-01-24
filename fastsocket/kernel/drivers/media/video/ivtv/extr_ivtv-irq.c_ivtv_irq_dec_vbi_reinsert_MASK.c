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
 size_t IVTV_DEC_STREAM_TYPE_VBI ; 
 int /*<<< orphan*/  IVTV_F_S_CLAIMED ; 
 int /*<<< orphan*/  IVTV_F_S_PIO_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ivtv_stream*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ivtv *itv)
{
	u32 data[CX2341X_MBOX_MAX_DATA];
	struct ivtv_stream *s = &itv->streams[IVTV_DEC_STREAM_TYPE_VBI];

	FUNC0("DEC VBI REINSERT\n");
	if (FUNC3(IVTV_F_S_CLAIMED, &s->s_flags) &&
			!FUNC2(s, data)) {
		FUNC1(IVTV_F_S_PIO_PENDING, &s->s_flags);
	}
}