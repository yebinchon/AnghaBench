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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct platform_device*) ; 
 int /*<<< orphan*/  s3c2440_uart_inf ; 
 int FUNC1 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct platform_device *dev)
{
	FUNC0("s3c2440_serial_probe: dev=%p\n", dev);
	return FUNC1(dev, &s3c2440_uart_inf);
}