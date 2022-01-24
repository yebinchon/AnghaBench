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
struct wacom_wac {int dummy; } ;
struct wacom_combo {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct wacom_wac*,struct wacom_combo*) ; 

__attribute__((used)) static int FUNC1(struct wacom_wac *wacom, void *wcombo)
{
	struct wacom_combo *wc = wcombo;

	/* currently only CTL-460 (Bamboo pen) is supported */
	return FUNC0(wacom, wc);
}