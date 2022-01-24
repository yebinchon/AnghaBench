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
struct TYPE_2__ {unsigned char* next_out; int avail_out; int avail_in; int next_in; int /*<<< orphan*/  msg; scalar_t__ workspace; } ;
struct gunzip_state {TYPE_1__ s; } ;

/* Variables and functions */
 int /*<<< orphan*/  Z_FULL_FLUSH ; 
 int Z_OK ; 
 int Z_STREAM_END ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int,int) ; 
 int FUNC2 (int,unsigned int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC4(struct gunzip_state *state, void *dst, int dstlen)
{
	int len;

	if (state->s.workspace) {
		/* gunzipping */
		int r;

		state->s.next_out = dst;
		state->s.avail_out = dstlen;
		r = FUNC3(&state->s, Z_FULL_FLUSH);
		if (r != Z_OK && r != Z_STREAM_END)
			FUNC0("inflate returned %d msg: %s\n\r", r, state->s.msg);
		len = state->s.next_out - (unsigned char *)dst;
	} else {
		/* uncompressed image */
		len = FUNC2(state->s.avail_in, (unsigned)dstlen);
		FUNC1(dst, state->s.next_in, len);
		state->s.next_in += len;
		state->s.avail_in -= len;
	}
	return len;
}