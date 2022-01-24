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
struct hfc_multi {int wdcount; int wdbyte; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfc_multi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  R_GPIO_EN0 ; 
 int /*<<< orphan*/  R_GPIO_OUT0 ; 
 int V_GPIO_EN2 ; 
 int V_GPIO_EN3 ; 
 int V_GPIO_OUT2 ; 
 int V_GPIO_OUT3 ; 

__attribute__((used)) static void
FUNC1(struct hfc_multi *hc)
{
	hc->wdcount++;

	if (hc->wdcount > 10) {
		hc->wdcount = 0;
		hc->wdbyte = hc->wdbyte == V_GPIO_OUT2 ?
		    V_GPIO_OUT3 : V_GPIO_OUT2;

	/* printk("Sending Watchdog Kill %x\n",hc->wdbyte); */
		FUNC0(hc, R_GPIO_EN0, V_GPIO_EN2 | V_GPIO_EN3);
		FUNC0(hc, R_GPIO_OUT0, hc->wdbyte);
	}
}