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
struct b43legacy_pioqueue {scalar_t__ mmio_base; TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 scalar_t__ B43legacy_MMIO_PIO1_BASE ; 
 int /*<<< orphan*/  B43legacy_PIO_RXCTL ; 
 int /*<<< orphan*/  B43legacy_PIO_RXCTL_READY ; 
 int /*<<< orphan*/  B43legacy_PIO_RXDATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_pioqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_pioqueue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static void FUNC4(struct b43legacy_pioqueue *queue,
			 int clear_buffers,
			 const char *error)
{
	int i;

	FUNC3(queue->dev->wl, "PIO RX error: %s\n", error);
	FUNC2(queue, B43legacy_PIO_RXCTL,
			    B43legacy_PIO_RXCTL_READY);
	if (clear_buffers) {
		FUNC0(queue->mmio_base != B43legacy_MMIO_PIO1_BASE);
		for (i = 0; i < 15; i++) {
			/* Dummy read. */
			FUNC1(queue, B43legacy_PIO_RXDATA);
		}
	}
}