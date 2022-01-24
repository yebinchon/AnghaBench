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
struct hardware_path {int* bc; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device*) ; 
 struct device* FUNC1 (struct device*,int,struct hardware_path*) ; 
 struct device root ; 

struct device *FUNC2(struct hardware_path *modpath)
{
	int i;
	struct device *parent = &root;
	for (i = 0; i < 6; i++) {
		if (modpath->bc[i] == -1)
			continue;
		parent = FUNC1(parent, i, modpath);
		if (!parent)
			return NULL;
	}
	if (FUNC0(parent)) /* pci devices already parse MOD */
		return parent;
	else
		return FUNC1(parent, 6, modpath);
}