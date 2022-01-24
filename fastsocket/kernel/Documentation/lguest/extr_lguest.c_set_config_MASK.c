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
struct device {TYPE_1__* desc; } ;
struct TYPE_4__ {unsigned int descpage; } ;
struct TYPE_3__ {unsigned int config_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 (struct device*) ; 
 TYPE_2__ devices ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 unsigned int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,void const*,unsigned int) ; 

__attribute__((used)) static void FUNC5(struct device *dev, unsigned len, const void *conf)
{
	/* Check we haven't overflowed our single page. */
	if (FUNC1(dev) + len > devices.descpage + FUNC3())
		FUNC2(1, "Too many devices");

	/* Copy in the config information, and store the length. */
	FUNC4(FUNC1(dev), conf, len);
	dev->desc->config_len = len;

	/* Size must fit in config_len field (8 bits)! */
	FUNC0(dev->desc->config_len == len);
}