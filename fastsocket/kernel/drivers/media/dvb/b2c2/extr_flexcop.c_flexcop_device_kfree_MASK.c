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
struct flexcop_device {struct flexcop_device* bus_specific; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct flexcop_device*) ; 

void FUNC1(struct flexcop_device *fc)
{
	FUNC0(fc->bus_specific);
	FUNC0(fc);
}