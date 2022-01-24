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
typedef  int u16 ;
struct ene_device {int r_pointer; int w_pointer; int hw_extra_buffer; int buffer_len; int extra_buf1_address; int extra_buf1_len; int extra_buf2_address; int extra_buf2_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENE_FW1 ; 
 int /*<<< orphan*/  ENE_FW1_EXTRA_BUF_HND ; 
 int ENE_FW_PACKET_SIZE ; 
 scalar_t__ ENE_FW_SAMPLE_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (struct ene_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct ene_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct ene_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct ene_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(struct ene_device *dev)
{
	u16 tmp;

	FUNC3(dev);
	dev->r_pointer = dev->w_pointer;

	if (!dev->hw_extra_buffer) {
		dev->buffer_len = ENE_FW_PACKET_SIZE * 2;
		return;
	}

	tmp = FUNC2(dev, ENE_FW_SAMPLE_BUFFER);
	tmp |= FUNC2(dev, ENE_FW_SAMPLE_BUFFER+1) << 8;
	dev->extra_buf1_address = tmp;

	dev->extra_buf1_len = FUNC2(dev, ENE_FW_SAMPLE_BUFFER + 2);

	tmp = FUNC2(dev, ENE_FW_SAMPLE_BUFFER + 3);
	tmp |= FUNC2(dev, ENE_FW_SAMPLE_BUFFER + 4) << 8;
	dev->extra_buf2_address = tmp;

	dev->extra_buf2_len = FUNC2(dev, ENE_FW_SAMPLE_BUFFER + 5);

	dev->buffer_len = dev->extra_buf1_len + dev->extra_buf2_len + 8;

	FUNC1("Hardware uses 2 extended buffers:");
	FUNC1("  0x%04x - len : %d", dev->extra_buf1_address,
						dev->extra_buf1_len);
	FUNC1("  0x%04x - len : %d", dev->extra_buf2_address,
						dev->extra_buf2_len);

	FUNC1("Total buffer len = %d", dev->buffer_len);

	if (dev->buffer_len > 64 || dev->buffer_len < 16)
		goto error;

	if (dev->extra_buf1_address > 0xFBFC ||
					dev->extra_buf1_address < 0xEC00)
		goto error;

	if (dev->extra_buf2_address > 0xFBFC ||
					dev->extra_buf2_address < 0xEC00)
		goto error;

	if (dev->r_pointer > dev->buffer_len)
		goto error;

	FUNC4(dev, ENE_FW1, ENE_FW1_EXTRA_BUF_HND);
	return;
error:
	FUNC5("Error validating extra buffers, device probably won't work");
	dev->hw_extra_buffer = false;
	FUNC0(dev, ENE_FW1, ENE_FW1_EXTRA_BUF_HND);
}