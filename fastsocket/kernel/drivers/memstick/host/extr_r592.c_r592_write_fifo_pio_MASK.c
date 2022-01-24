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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct r592_device {int /*<<< orphan*/  pio_fifo; } ;

/* Variables and functions */
 int /*<<< orphan*/  R592_FIFO_PIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct r592_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct r592_device *dev,
					unsigned char *buffer, int len)
{
	/* flush spill from former write */
	if (!FUNC2(&dev->pio_fifo)) {

		u8 tmp[4] = {0};
		int copy_len = FUNC1(&dev->pio_fifo, buffer, len);

		if (!FUNC3(&dev->pio_fifo))
			return;
		len -= copy_len;
		buffer += copy_len;

		copy_len = FUNC4(&dev->pio_fifo, tmp, 4);
		FUNC0(copy_len != 4);
		FUNC5(dev, R592_FIFO_PIO, *(u32 *)tmp);
	}

	FUNC0(!FUNC2(&dev->pio_fifo));

	/* write full dwords */
	while (len >= 4) {
		FUNC5(dev, R592_FIFO_PIO, *(u32 *)buffer);
		buffer += 4;
		len -= 4;
	}

	/* put remaining bytes to the spill */
	if (len)
		FUNC1(&dev->pio_fifo, buffer, len);
}