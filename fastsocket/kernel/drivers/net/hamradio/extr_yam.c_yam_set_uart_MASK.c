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
struct yam_port {int baudrate; } ;
struct net_device {int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENABLE_RTXINT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int LCR_BIT8 ; 
 int LCR_DLAB ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int PTT_OFF ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct yam_port* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct net_device *dev)
{
	struct yam_port *yp = FUNC9(dev);
	int divisor = 115200 / yp->baudrate;

	FUNC10(0, FUNC3(dev->base_addr));
	FUNC10(LCR_DLAB | LCR_BIT8, FUNC4(dev->base_addr));
	FUNC10(divisor, FUNC0(dev->base_addr));
	FUNC10(0, FUNC1(dev->base_addr));
	FUNC10(LCR_BIT8, FUNC4(dev->base_addr));
	FUNC10(PTT_OFF, FUNC5(dev->base_addr));
	FUNC10(0x00, FUNC2(dev->base_addr));

	/* Flush pending irq */

	FUNC8(FUNC7(dev->base_addr));
	FUNC8(FUNC6(dev->base_addr));

	/* Enable rx irq */

	FUNC10(ENABLE_RTXINT, FUNC3(dev->base_addr));
}