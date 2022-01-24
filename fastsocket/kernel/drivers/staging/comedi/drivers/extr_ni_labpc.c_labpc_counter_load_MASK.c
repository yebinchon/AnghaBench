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
struct TYPE_2__ {scalar_t__ memory_mapped_io; } ;

/* Variables and functions */
 int FUNC0 (unsigned long,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 int FUNC1 (void*,int /*<<< orphan*/ ,unsigned int,unsigned int,unsigned int) ; 
 TYPE_1__* thisboard ; 

__attribute__((used)) static inline int FUNC2(struct comedi_device *dev,
				     unsigned long base_address,
				     unsigned int counter_number,
				     unsigned int count, unsigned int mode)
{
	if (thisboard->memory_mapped_io)
		return FUNC1((void *)base_address, 0, counter_number,
				     count, mode);
	else
		return FUNC0(base_address, 0, counter_number, count, mode);
}