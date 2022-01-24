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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(u8 base_data, u8 data)
{
	/* Set Common Voltage to M62332FP via I2C */
	FUNC1(base_data);
	FUNC0(base_data, 0x9c);
	FUNC3(base_data);
	FUNC0(base_data, 0x00);
	FUNC3(base_data);
	FUNC0(base_data, data);
	FUNC3(base_data);
	FUNC2(base_data);
}