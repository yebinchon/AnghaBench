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
struct ivtv_stream {int /*<<< orphan*/  s_flags; int /*<<< orphan*/ * vdev; } ;
struct ivtv {struct ivtv_stream* streams; } ;

/* Variables and functions */
 int /*<<< orphan*/  IVTV_F_S_STREAMING ; 
 int IVTV_MAX_STREAMS ; 
 int /*<<< orphan*/  FUNC0 (struct ivtv_stream*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC2(struct ivtv *itv)
{
	int i;

	for (i = IVTV_MAX_STREAMS - 1; i >= 0; i--) {
		struct ivtv_stream *s = &itv->streams[i];

		if (s->vdev == NULL)
			continue;
		if (FUNC1(IVTV_F_S_STREAMING, &s->s_flags)) {
			FUNC0(s, 0);
		}
	}
}