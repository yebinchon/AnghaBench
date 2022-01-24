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
typedef  int u32 ;
typedef  int /*<<< orphan*/  t ;
struct wl12xx_spi_glue {int /*<<< orphan*/  dev; } ;
struct wl1271 {int* buffer_busyword; } ;
struct spi_transfer {int* rx_buf; int len; int cs_change; } ;
struct spi_message {int dummy; } ;
struct device {struct device* parent; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int WL1271_BUSY_WORD_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 void* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct spi_transfer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_transfer*,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC4 (struct spi_message*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct spi_message*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct device *child)
{
	struct wl12xx_spi_glue *glue = FUNC1(child->parent);
	struct wl1271 *wl = FUNC1(child);
	struct spi_transfer t[1];
	struct spi_message m;
	u32 *busy_buf;
	int num_busy_bytes = 0;

	/*
	 * Read further busy words from SPI until a non-busy word is
	 * encountered, then read the data itself into the buffer.
	 */

	num_busy_bytes = WL1271_BUSY_WORD_TIMEOUT;
	busy_buf = wl->buffer_busyword;
	while (num_busy_bytes) {
		num_busy_bytes--;
		FUNC4(&m);
		FUNC2(t, 0, sizeof(t));
		t[0].rx_buf = busy_buf;
		t[0].len = sizeof(u32);
		t[0].cs_change = true;
		FUNC3(&t[0], &m);
		FUNC5(FUNC6(glue->dev), &m);

		if (*busy_buf & 0x1)
			return 0;
	}

	/* The SPI bus is unresponsive, the read failed. */
	FUNC0(child->parent, "SPI read busy-word timeout!\n");
	return -ETIMEDOUT;
}