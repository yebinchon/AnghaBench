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
struct b43legacy_pioqueue {scalar_t__ need_workarounds; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_PIO_TXCTL ; 
 int /*<<< orphan*/  B43legacy_PIO_TXCTL_WRITELO ; 
 int /*<<< orphan*/  B43legacy_PIO_TXDATA ; 
 int /*<<< orphan*/  FUNC0 (struct b43legacy_pioqueue*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct b43legacy_pioqueue *queue,
		     u8 octet)
{
	if (queue->need_workarounds) {
		FUNC0(queue, B43legacy_PIO_TXDATA, octet);
		FUNC0(queue, B43legacy_PIO_TXCTL,
				    B43legacy_PIO_TXCTL_WRITELO);
	} else {
		FUNC0(queue, B43legacy_PIO_TXCTL,
				    B43legacy_PIO_TXCTL_WRITELO);
		FUNC0(queue, B43legacy_PIO_TXDATA, octet);
	}
}