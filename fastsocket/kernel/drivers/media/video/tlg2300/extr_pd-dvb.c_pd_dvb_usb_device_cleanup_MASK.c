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
struct pd_dvb_adapter {int dummy; } ;
struct poseidon {struct pd_dvb_adapter dvb_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pd_dvb_adapter*) ; 

void FUNC1(struct poseidon *pd)
{
	struct pd_dvb_adapter *pd_dvb = &pd->dvb_data;

	FUNC0(pd_dvb);
}