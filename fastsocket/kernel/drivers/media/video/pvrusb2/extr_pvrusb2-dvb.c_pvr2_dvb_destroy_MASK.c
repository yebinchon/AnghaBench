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
struct pvr2_dvb_adapter {int /*<<< orphan*/  channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pvr2_dvb_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pvr2_dvb_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct pvr2_dvb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct pvr2_dvb_adapter*) ; 

__attribute__((used)) static void FUNC5(struct pvr2_dvb_adapter *adap)
{
	FUNC4(adap);
	FUNC3(adap);
	FUNC2(adap);
	FUNC1(&adap->channel);
	FUNC0(adap);
}