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
struct spi_device {int dummy; } ;
struct butterfly {int /*<<< orphan*/  lastbyte; int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spi_mosi_bit ; 
 struct butterfly* FUNC1 (struct spi_device*) ; 

__attribute__((used)) static inline void
FUNC2(struct spi_device *spi, int is_on)
{
	struct butterfly	*pp = FUNC1(spi);
	u8			bit, byte = pp->lastbyte;

	bit = spi_mosi_bit;

	if (is_on)
		byte |= bit;
	else
		byte &= ~bit;
	FUNC0(pp->port, byte);
	pp->lastbyte = byte;
}