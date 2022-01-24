#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int max_length; int segments; int /*<<< orphan*/ ** data; scalar_t__ segment_pending; scalar_t__ count; scalar_t__ write; scalar_t__ read; scalar_t__* length; } ;
typedef  TYPE_1__ diva_um_idi_data_queue_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int) ; 

int
FUNC2(diva_um_idi_data_queue_t * q,
		 int max_length, int max_segments)
{
	int i;

	q->max_length = max_length;
	q->segments = max_segments;

	for (i = 0; i < q->segments; i++) {
		q->data[i] = NULL;
		q->length[i] = 0;
	}
	q->read = q->write = q->count = q->segment_pending = 0;

	for (i = 0; i < q->segments; i++) {
		if (!(q->data[i] = FUNC1(0, q->max_length))) {
			FUNC0(q);
			return (-1);
		}
	}

	return (0);
}