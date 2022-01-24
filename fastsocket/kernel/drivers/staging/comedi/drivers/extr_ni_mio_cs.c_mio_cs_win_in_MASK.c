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
typedef  int /*<<< orphan*/  uint16_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  window_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  Window_Address ; 
 int Window_Data ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static uint16_t FUNC4(struct comedi_device *dev, int addr)
{
	unsigned long flags;
	uint16_t ret;

	FUNC2(&devpriv->window_lock, flags);
	if (addr < 8) {
		ret = FUNC0(addr * 2);
	} else {
		FUNC1(addr, Window_Address);
		ret = FUNC0(Window_Data);
	}
	FUNC3(&devpriv->window_lock, flags);

	return ret;
}