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
struct firmware {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char const*,int) ; 
 int FUNC2 (struct firmware const**,char const*,struct device*) ; 

__attribute__((used)) static int FUNC3(
	const struct firmware **fw, const char *name, struct device *device)
{
	int r;

	FUNC0(device, "fw name %s\n", name);

	r = FUNC2(fw, name, device);
	if (r)
		FUNC1(device,
		       "Could not load firmware file %s. Error number %d\n",
		       name, r);
	return r;
}