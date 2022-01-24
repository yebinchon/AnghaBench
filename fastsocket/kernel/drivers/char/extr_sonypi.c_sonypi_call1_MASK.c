#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {int /*<<< orphan*/  ioport1; int /*<<< orphan*/  ioport2; } ;

/* Variables and functions */
 int /*<<< orphan*/  ITERATIONS_LONG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__ sonypi_device ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC3(u8 dev)
{
	u8 v1, v2;

	FUNC2(0, FUNC0(sonypi_device.ioport2) & 2, ITERATIONS_LONG);
	FUNC1(dev, sonypi_device.ioport2);
	v1 = FUNC0(sonypi_device.ioport2);
	v2 = FUNC0(sonypi_device.ioport1);
	return v2;
}