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
struct device {int dummy; } ;
struct parisc_device {struct device dev; } ;
struct hardware_path {int* bc; int mod; } ;

/* Variables and functions */
 struct parisc_device* FUNC0 (struct device*,int) ; 
 struct device root ; 

__attribute__((used)) static struct parisc_device *FUNC1(struct hardware_path *modpath)
{
	int i;
	struct device *parent = &root;
	for (i = 0; i < 6; i++) {
		if (modpath->bc[i] == -1)
			continue;
		parent = &FUNC0(parent, modpath->bc[i])->dev;
	}
	return FUNC0(parent, modpath->mod);
}