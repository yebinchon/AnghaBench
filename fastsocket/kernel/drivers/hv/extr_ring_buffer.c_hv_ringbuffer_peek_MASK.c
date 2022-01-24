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
struct hv_ring_buffer_info {int /*<<< orphan*/  ring_lock; } ;

/* Variables and functions */
 int EAGAIN ; 
 scalar_t__ FUNC0 (struct hv_ring_buffer_info*,void*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (struct hv_ring_buffer_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct hv_ring_buffer_info*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct hv_ring_buffer_info *Inring_info,
		   void *Buffer, u32 buflen)
{
	u32 bytes_avail_towrite;
	u32 bytes_avail_toread;
	u32 next_read_location = 0;
	unsigned long flags;

	FUNC3(&Inring_info->ring_lock, flags);

	FUNC2(Inring_info,
				&bytes_avail_toread,
				&bytes_avail_towrite);

	/* Make sure there is something to read */
	if (bytes_avail_toread < buflen) {

		FUNC4(&Inring_info->ring_lock, flags);

		return -EAGAIN;
	}

	/* Convert to byte offset */
	next_read_location = FUNC1(Inring_info);

	next_read_location = FUNC0(Inring_info,
						Buffer,
						buflen,
						next_read_location);

	FUNC4(&Inring_info->ring_lock, flags);

	return 0;
}