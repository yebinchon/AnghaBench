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
struct maxiradio {int /*<<< orphan*/  io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct maxiradio*,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  power ; 

__attribute__((used)) static void FUNC2(struct maxiradio *dev, int p)
{
	if (p != 0) {
		FUNC0(dev, 1, "Radio powered on\n");
		FUNC1(power, dev->io);
	} else {
		FUNC0(dev, 1, "Radio powered off\n");
		FUNC1(0, dev->io);
	}
}