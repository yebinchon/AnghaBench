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
struct b43legacy_pioqueue {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_PIO_TXCTL ; 
 int B43legacy_PIO_TXCTL_SUSPEND ; 
 int FUNC0 (struct b43legacy_pioqueue*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_pioqueue*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

void FUNC3(struct b43legacy_pioqueue *queue)
{
	FUNC2(queue->dev, -1, 1);
	FUNC1(queue, B43legacy_PIO_TXCTL,
			    FUNC0(queue, B43legacy_PIO_TXCTL)
			    | B43legacy_PIO_TXCTL_SUSPEND);
}