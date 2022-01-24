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
struct flexcop_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  Rcv_Data_sig ; 
 int /*<<< orphan*/  ctrl_208 ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct flexcop_device *fc, int onoff)
{
	FUNC1(ctrl_208, Rcv_Data_sig, onoff);
	FUNC0("rcv_data is now: '%s'\n", onoff ? "on" : "off");
}