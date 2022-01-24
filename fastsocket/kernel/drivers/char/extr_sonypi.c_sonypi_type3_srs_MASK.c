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
typedef  int u16 ;
struct TYPE_2__ {int ioport1; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SONYPI_TYPE3_GID2 ; 
 int /*<<< orphan*/  SONYPI_TYPE3_MISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ sonypi_device ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(void)
{
	u16 v16;
	u8  v8;

	/* This model type uses the same initialiazation of
	 * the embedded controller as the type2 models. */
	FUNC3();

	/* Initialization of PCI config space of the LPC interface bridge. */
	v16 = (sonypi_device.ioport1 & 0xFFF0) | 0x01;
	FUNC2(sonypi_device.dev, SONYPI_TYPE3_GID2, v16);
	FUNC0(sonypi_device.dev, SONYPI_TYPE3_MISC, &v8);
	v8 = (v8 & 0xCF) | 0x10;
	FUNC1(sonypi_device.dev, SONYPI_TYPE3_MISC, v8);
}