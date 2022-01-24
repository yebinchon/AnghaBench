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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  REG_MEM_BIST ; 
 int /*<<< orphan*/  REG_SPI4_MISC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(adapter_t *adapter)
{
	int port = 0;
	u32 val = 0;

	FUNC7(adapter, REG_MEM_BIST, 0x5);
	FUNC6(adapter, REG_MEM_BIST, &val);

	for (port = 0; port < 12; port++)
		FUNC7(adapter, FUNC0(port), 0x0);

	FUNC5(300);
	FUNC7(adapter, REG_SPI4_MISC, 0x00040409);
	FUNC5(300);

	(void) FUNC4(adapter,13);
	(void) FUNC4(adapter,14);
	(void) FUNC4(adapter,20);
	(void) FUNC4(adapter,21);
	FUNC3(200);
	(void) FUNC1(adapter,13);
	(void) FUNC1(adapter,14);
	(void) FUNC1(adapter,20);
	(void) FUNC1(adapter,21);
	FUNC5(100);
	(void) FUNC2(adapter,13);
	(void) FUNC2(adapter,14);
	(void) FUNC2(adapter,20);
	(void) FUNC2(adapter,21);
	FUNC5(300);
	FUNC7(adapter, REG_SPI4_MISC, 0x60040400);
	FUNC5(300);
	for (port = 0; port < 12; port++)
		FUNC7(adapter, FUNC0(port), 0x1);

	FUNC5(300);
	FUNC7(adapter, REG_MEM_BIST, 0x0);
	FUNC3(10);
	return 0;
}