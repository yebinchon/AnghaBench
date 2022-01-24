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
struct parisc_device {int dummy; } ;
struct find_data {unsigned long hpa; struct parisc_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  find_device ; 
 int FUNC0 (int /*<<< orphan*/ ,struct find_data*) ; 

__attribute__((used)) static struct parisc_device *FUNC1(unsigned long hpa)
{
	struct find_data d = {
		.hpa	= hpa,
	};
	int ret;

	ret = FUNC0(find_device, &d);
	return ret ? d.dev : NULL;
}