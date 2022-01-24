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
struct i2400m_tlv_hdr {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
struct i2400m {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,void const*,size_t,unsigned int,...) ; 
 struct device* FUNC2 (struct i2400m*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
const struct i2400m_tlv_hdr *FUNC4(
	struct i2400m *i2400m,
	const void *tlv_buf, size_t buf_size,
	const struct i2400m_tlv_hdr *tlv_pos)
{
	struct device *dev = FUNC2(i2400m);
	const struct i2400m_tlv_hdr *tlv_top = tlv_buf + buf_size;
	size_t offset, length, avail_size;
	unsigned type;

	if (tlv_pos == NULL)	/* Take the first one? */
		tlv_pos = tlv_buf;
	else			/* Nope, the next one */
		tlv_pos = (void *) tlv_pos
			+ FUNC3(tlv_pos->length) + sizeof(*tlv_pos);
	if (tlv_pos == tlv_top) {	/* buffer done */
		tlv_pos = NULL;
		goto error_beyond_end;
	}
	if (tlv_pos > tlv_top) {
		tlv_pos = NULL;
		FUNC0(1);
		goto error_beyond_end;
	}
	offset = (void *) tlv_pos - (void *) tlv_buf;
	avail_size = buf_size - offset;
	if (avail_size < sizeof(*tlv_pos)) {
		FUNC1(dev, "HW BUG? tlv_buf %p [%zu bytes], tlv @%zu: "
			"short header\n", tlv_buf, buf_size, offset);
		goto error_short_header;
	}
	type = FUNC3(tlv_pos->type);
	length = FUNC3(tlv_pos->length);
	if (avail_size < sizeof(*tlv_pos) + length) {
		FUNC1(dev, "HW BUG? tlv_buf %p [%zu bytes], "
			"tlv type 0x%04x @%zu: "
			"short data (%zu bytes vs %zu needed)\n",
			tlv_buf, buf_size, type, offset, avail_size,
			sizeof(*tlv_pos) + length);
		goto error_short_header;
	}
error_short_header:
error_beyond_end:
	return tlv_pos;
}