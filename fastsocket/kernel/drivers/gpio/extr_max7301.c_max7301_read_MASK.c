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
typedef  int /*<<< orphan*/  word ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct spi_device*,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct spi_device*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC2(struct spi_device *spi, unsigned int reg)
{
	int ret;
	u16 word;

	word = 0x8000 | (reg << 8);
	ret = FUNC1(spi, (const u8 *)&word, sizeof(word));
	if (ret)
		return ret;
	/*
	 * This relies on the fact, that a transfer with NULL tx_buf shifts out
	 * zero bytes (=NOOP for MAX7301)
	 */
	ret = FUNC0(spi, (u8 *)&word, sizeof(word));
	if (ret)
		return ret;
	return word & 0xff;
}