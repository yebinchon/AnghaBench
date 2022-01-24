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
struct sdio_func {int dummy; } ;
struct b43_wldev {int dummy; } ;
struct b43_sdio {int /*<<< orphan*/  (* irq_handler ) (struct b43_wldev*) ;struct b43_wldev* irq_handler_opaque; } ;

/* Variables and functions */
 scalar_t__ B43_STAT_STARTED ; 
 scalar_t__ FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct sdio_func*) ; 
 struct b43_sdio* FUNC2 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC3 (struct sdio_func*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct sdio_func *func)
{
	struct b43_sdio *sdio = FUNC2(func);
	struct b43_wldev *dev = sdio->irq_handler_opaque;

	if (FUNC5(FUNC0(dev) < B43_STAT_STARTED))
		return;

	FUNC3(func);
	sdio->irq_handler(dev);
	FUNC1(func);
}