#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pvr2_dvb_adapter {int /*<<< orphan*/  channel; } ;
struct dvb_frontend {TYPE_1__* dvb; } ;
struct TYPE_2__ {struct pvr2_dvb_adapter* priv; } ;

/* Variables and functions */
 int PVR2_CVAL_INPUT_DTV ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_frontend *fe, int acquire)
{
	struct pvr2_dvb_adapter *adap = fe->dvb->priv;
	return FUNC0(
	    &adap->channel,
	    (acquire ? (1 << PVR2_CVAL_INPUT_DTV) : 0));
}