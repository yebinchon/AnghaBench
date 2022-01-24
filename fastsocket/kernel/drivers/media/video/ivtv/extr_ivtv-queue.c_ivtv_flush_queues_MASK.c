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
struct ivtv_stream {int /*<<< orphan*/  q_free; int /*<<< orphan*/  q_predma; int /*<<< orphan*/  q_dma; int /*<<< orphan*/  q_full; int /*<<< orphan*/  q_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ivtv_stream*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC1(struct ivtv_stream *s)
{
	FUNC0(s, &s->q_io, NULL, &s->q_free, 0);
	FUNC0(s, &s->q_full, NULL, &s->q_free, 0);
	FUNC0(s, &s->q_dma, NULL, &s->q_free, 0);
	FUNC0(s, &s->q_predma, NULL, &s->q_free, 0);
}