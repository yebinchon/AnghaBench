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
struct ene_device {int r_pointer; int w_pointer; int buffer_len; int extra_buf1_len; int extra_buf1_address; int extra_buf2_len; int extra_buf2_address; } ;

/* Variables and functions */
 int ENE_FW_SAMPLE_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct ene_device*) ; 

__attribute__((used)) static int FUNC3(struct ene_device *dev)
{
	int r_pointer;

	if (dev->r_pointer == dev->w_pointer) {
		FUNC1("RB: hit end, try update w_pointer");
		FUNC2(dev);
	}

	if (dev->r_pointer == dev->w_pointer) {
		FUNC1("RB: end of data at %d", dev->r_pointer);
		return 0;
	}

	FUNC1("RB: reading at offset %d", dev->r_pointer);
	r_pointer = dev->r_pointer;

	dev->r_pointer++;
	if (dev->r_pointer == dev->buffer_len)
		dev->r_pointer = 0;

	FUNC1("RB: next read will be from offset %d", dev->r_pointer);

	if (r_pointer < 8) {
		FUNC1("RB: read at main buffer at %d", r_pointer);
		return ENE_FW_SAMPLE_BUFFER + r_pointer;
	}

	r_pointer -= 8;

	if (r_pointer < dev->extra_buf1_len) {
		FUNC1("RB: read at 1st extra buffer at %d", r_pointer);
		return dev->extra_buf1_address + r_pointer;
	}

	r_pointer -= dev->extra_buf1_len;

	if (r_pointer < dev->extra_buf2_len) {
		FUNC1("RB: read at 2nd extra buffer at %d", r_pointer);
		return dev->extra_buf2_address + r_pointer;
	}

	FUNC0("attempt to read beyong ring bufer end");
	return 0;
}