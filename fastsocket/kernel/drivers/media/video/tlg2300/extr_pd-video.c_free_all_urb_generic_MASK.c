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
struct urb {int /*<<< orphan*/  transfer_dma; int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  transfer_buffer_length; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct urb*) ; 

void FUNC2(struct urb **urb_array, int num)
{
	int i;
	struct urb *urb;

	for (i = 0; i < num; i++) {
		urb = urb_array[i];
		if (urb) {
			FUNC0(urb->dev,
					urb->transfer_buffer_length,
					urb->transfer_buffer,
					urb->transfer_dma);
			FUNC1(urb);
			urb_array[i] = NULL;
		}
	}
}