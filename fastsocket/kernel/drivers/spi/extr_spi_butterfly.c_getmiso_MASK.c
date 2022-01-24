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
typedef  int u8 ;
struct spi_device {int dummy; } ;
struct butterfly {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int PARPORT_STATUS_BUSY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int spi_miso_bit ; 
 struct butterfly* FUNC1 (struct spi_device*) ; 

__attribute__((used)) static inline int FUNC2(struct spi_device *spi)
{
	struct butterfly	*pp = FUNC1(spi);
	int			value;
	u8			bit;

	bit = spi_miso_bit;

	/* only STATUS_BUSY is NOT negated */
	value = !(FUNC0(pp->port) & bit);
	return (bit == PARPORT_STATUS_BUSY) ? value : !value;
}