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
typedef  scalar_t__ u32 ;
struct hv_ring_buffer_info {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct hv_ring_buffer_info*) ; 
 scalar_t__ FUNC1 (struct hv_ring_buffer_info*) ; 
 int /*<<< orphan*/  FUNC2 (void*,void*,scalar_t__) ; 

__attribute__((used)) static u32 FUNC3(
	struct hv_ring_buffer_info	*ring_info,
	u32				start_write_offset,
	void				*src,
	u32				srclen)
{
	void *ring_buffer = FUNC0(ring_info);
	u32 ring_buffer_size = FUNC1(ring_info);
	u32 frag_len;

	/* wrap-around detected! */
	if (srclen > ring_buffer_size - start_write_offset) {
		frag_len = ring_buffer_size - start_write_offset;
		FUNC2(ring_buffer + start_write_offset, src, frag_len);
		FUNC2(ring_buffer, src + frag_len, srclen - frag_len);
	} else
		FUNC2(ring_buffer + start_write_offset, src, srclen);

	start_write_offset += srclen;
	start_write_offset %= ring_buffer_size;

	return start_write_offset;
}