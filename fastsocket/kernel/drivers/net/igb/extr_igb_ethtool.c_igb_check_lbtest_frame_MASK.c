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
struct igb_rx_buffer {int /*<<< orphan*/  page; } ;

/* Variables and functions */
 unsigned char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct igb_rx_buffer *rx_buffer,
				  unsigned int frame_size)
{
	unsigned char *data;
	bool match = true;

	frame_size >>= 1;

	data = FUNC0(rx_buffer->page);

	if (data[3] != 0xFF ||
	    data[frame_size + 10] != 0xBE ||
	    data[frame_size + 12] != 0xAF)
		match = false;

	FUNC1(rx_buffer->page);

	return match;
}