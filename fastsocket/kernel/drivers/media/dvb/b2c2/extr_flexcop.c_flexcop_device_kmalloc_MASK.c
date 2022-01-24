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
struct flexcop_device {void* bus_specific; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct flexcop_device*) ; 
 void* FUNC2 (size_t,int /*<<< orphan*/ ) ; 

struct flexcop_device *FUNC3(size_t bus_specific_len)
{
	void *bus;
	struct flexcop_device *fc = FUNC2(sizeof(struct flexcop_device),
				GFP_KERNEL);
	if (!fc) {
		FUNC0("no memory");
		return NULL;
	}

	bus = FUNC2(bus_specific_len, GFP_KERNEL);
	if (!bus) {
		FUNC0("no memory");
		FUNC1(fc);
		return NULL;
	}

	fc->bus_specific = bus;

	return fc;
}