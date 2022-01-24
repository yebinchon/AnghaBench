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
struct parisc_device {char hw_path; } ;
struct hardware_path {char mod; char* bc; } ;
struct device {int dummy; } ;

/* Variables and functions */
 struct parisc_device* FUNC0 (struct device*) ; 

__attribute__((used)) static int FUNC1(struct device *dev, int index,
		struct hardware_path *modpath)
{
	struct parisc_device *curr = FUNC0(dev);
	char id = (index == 6) ? modpath->mod : modpath->bc[index];

	return (curr->hw_path == id);
}