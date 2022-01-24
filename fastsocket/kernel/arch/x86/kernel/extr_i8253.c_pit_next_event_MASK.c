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
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIT_CH0 ; 
 int /*<<< orphan*/  i8253_lock ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(unsigned long delta, struct clock_event_device *evt)
{
	FUNC1(&i8253_lock);
	FUNC0(delta & 0xff , PIT_CH0);	/* LSB */
	FUNC0(delta >> 8 , PIT_CH0);		/* MSB */
	FUNC2(&i8253_lock);

	return 0;
}