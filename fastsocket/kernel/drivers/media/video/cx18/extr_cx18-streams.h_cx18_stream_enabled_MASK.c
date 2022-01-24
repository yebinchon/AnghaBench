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
struct cx18_stream {size_t type; TYPE_2__* cx; TYPE_1__* dvb; scalar_t__ video_dev; } ;
struct TYPE_4__ {scalar_t__* stream_buffers; } ;
struct TYPE_3__ {scalar_t__ enabled; } ;

/* Variables and functions */
 size_t CX18_ENC_STREAM_TYPE_IDX ; 

__attribute__((used)) static inline bool FUNC0(struct cx18_stream *s)
{
	return s->video_dev ||
	       (s->dvb && s->dvb->enabled) ||
	       (s->type == CX18_ENC_STREAM_TYPE_IDX &&
		s->cx->stream_buffers[CX18_ENC_STREAM_TYPE_IDX] != 0);
}