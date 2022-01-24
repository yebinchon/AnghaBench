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
struct pd_uinfo {int num_gd; int first_gd; int num_sd; int first_sd; } ;
struct crypto4xx_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct crypto4xx_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct crypto4xx_device*) ; 

__attribute__((used)) static void FUNC2(struct crypto4xx_device *dev,
				  struct pd_uinfo *pd_uinfo)
{
	int i;
	if (pd_uinfo->num_gd) {
		for (i = 0; i < pd_uinfo->num_gd; i++)
			FUNC0(dev);
		pd_uinfo->first_gd = 0xffffffff;
		pd_uinfo->num_gd = 0;
	}
	if (pd_uinfo->num_sd) {
		for (i = 0; i < pd_uinfo->num_sd; i++)
			FUNC1(dev);

		pd_uinfo->first_sd = 0xffffffff;
		pd_uinfo->num_sd = 0;
	}
}