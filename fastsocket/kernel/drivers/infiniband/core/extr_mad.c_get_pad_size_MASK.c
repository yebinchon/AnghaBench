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
struct ib_mad {int dummy; } ;

/* Variables and functions */

__attribute__((used)) static int FUNC0(int hdr_len, int data_len)
{
	int seg_size, pad;

	seg_size = sizeof(struct ib_mad) - hdr_len;
	if (data_len && seg_size) {
		pad = seg_size - data_len % seg_size;
		return pad == seg_size ? 0 : pad;
	} else
		return seg_size;
}