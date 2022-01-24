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
struct net_device {int dma; int base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MODE_WRITE ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  ltdmacbuf ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct net_device*,int) ; 

__attribute__((used)) static void FUNC12(struct net_device *dev)
{
	/* on entry, 0xfa and ltdmacbuf holds command */
	int dma = dev->dma;
	int base = dev->base_addr;
	unsigned long flags;

	flags=FUNC0();
	FUNC2(dma);
	FUNC1(dma);
	FUNC9(dma,DMA_MODE_WRITE);
	FUNC7(dma,FUNC10(ltdmacbuf));
	FUNC8(dma,50);
	FUNC3(dma);
	FUNC6(flags);
	FUNC4(base+3);
	FUNC4(base+2);
	if ( FUNC11(dev,0xfa) ) FUNC5("timed out in handlecommand\n");
}