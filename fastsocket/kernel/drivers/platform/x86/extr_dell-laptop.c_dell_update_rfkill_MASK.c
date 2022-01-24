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
struct work_struct {int dummy; } ;

/* Variables and functions */
 scalar_t__ bluetooth_rfkill ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,void*) ; 
 scalar_t__ wifi_rfkill ; 
 scalar_t__ wwan_rfkill ; 

__attribute__((used)) static void FUNC1(struct work_struct *ignored)
{
	if (wifi_rfkill)
		FUNC0(wifi_rfkill, (void *)1);
	if (bluetooth_rfkill)
		FUNC0(bluetooth_rfkill, (void *)2);
	if (wwan_rfkill)
		FUNC0(wwan_rfkill, (void *)3);
}