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
typedef  size_t u8 ;
struct wl1271 {scalar_t__ fwlog_size; scalar_t__ fwlog; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,size_t*,size_t) ; 
 size_t FUNC1 (size_t,size_t) ; 

size_t FUNC2(struct wl1271 *wl, u8 *memblock, size_t maxlen)
{
	size_t len = 0;

	/* The FW log is a length-value list, find where the log end */
	while (len < maxlen) {
		if (memblock[len] == 0)
			break;
		if (len + memblock[len] + 1 > maxlen)
			break;
		len += memblock[len] + 1;
	}

	/* Make sure we have enough room */
	len = FUNC1(len, (size_t)(PAGE_SIZE - wl->fwlog_size));

	/* Fill the FW log file, consumed by the sysfs fwlog entry */
	FUNC0(wl->fwlog + wl->fwlog_size, memblock, len);
	wl->fwlog_size += len;

	return len;
}