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
typedef  int uint16_t ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  window_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  AO_Window_Address_611x ; 
 int /*<<< orphan*/  AO_Window_Data_611x ; 
 TYPE_1__* devpriv ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC3(struct comedi_device *dev, uint16_t data,
				  int addr)
{
	unsigned long flags;

	FUNC1(&devpriv->window_lock, flags);
	FUNC0(addr, AO_Window_Address_611x);
	FUNC0(data, AO_Window_Data_611x);
	FUNC2(&devpriv->window_lock, flags);
}