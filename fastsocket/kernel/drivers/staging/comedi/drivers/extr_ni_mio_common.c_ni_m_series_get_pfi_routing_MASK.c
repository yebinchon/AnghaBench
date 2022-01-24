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
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * pfi_output_select_reg; } ;

/* Variables and functions */
 int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_1__* devpriv ; 

__attribute__((used)) static unsigned FUNC1(struct comedi_device *dev,
					    unsigned chan)
{
	const unsigned array_offset = chan / 3;
	return FUNC0(chan,
						devpriv->
						pfi_output_select_reg
						[array_offset]);
}