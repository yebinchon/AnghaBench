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
struct pd_dvb_adapter {int /*<<< orphan*/  urb_array; } ;

/* Variables and functions */
 int /*<<< orphan*/  DVB_SBUF_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct pd_dvb_adapter *pd_dvb)
{
	FUNC0(pd_dvb->urb_array, DVB_SBUF_NUM);
}