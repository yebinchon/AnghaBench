#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct comedi_device {int dummy; } ;
struct TYPE_4__ {unsigned int n_chips; } ;
struct TYPE_3__ {int /*<<< orphan*/ ** mite_rings; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct comedi_device*) ; 
 unsigned int counters_per_chip ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct comedi_device*) ; 

__attribute__((used)) static void FUNC3(struct comedi_device *dev)
{
	unsigned i;
	unsigned j;

	for (i = 0; i < FUNC0(dev)->n_chips; ++i) {
		for (j = 0; j < counters_per_chip; ++j) {
			FUNC1(FUNC2(dev)->mite_rings[i][j]);
		}
	}
}