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
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct r592_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct r592_device *dev)
{
	u8 buffer[4] = { 0 };
	int len;

	if (FUNC0(&dev->pio_fifo))
		return;

	len = FUNC1(&dev->pio_fifo, buffer, 4);
	FUNC2(dev, R592_FIFO_PIO, *(u32 *)buffer);
}