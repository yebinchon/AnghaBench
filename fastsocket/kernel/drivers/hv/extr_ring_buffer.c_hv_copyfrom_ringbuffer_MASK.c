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
	void				*dest,
	u32				destlen,
	u32				start_read_offset)
{
	void *ring_buffer = FUNC0(ring_info);
	u32 ring_buffer_size = FUNC1(ring_info);

	u32 frag_len;

	/* wrap-around detected at the src */
	if (destlen > ring_buffer_size - start_read_offset) {
		frag_len = ring_buffer_size - start_read_offset;

		FUNC2(dest, ring_buffer + start_read_offset, frag_len);
		FUNC2(dest + frag_len, ring_buffer, destlen - frag_len);
	} else

		FUNC2(dest, ring_buffer + start_read_offset, destlen);


	start_read_offset += destlen;
	start_read_offset %= ring_buffer_size;

	return start_read_offset;
}