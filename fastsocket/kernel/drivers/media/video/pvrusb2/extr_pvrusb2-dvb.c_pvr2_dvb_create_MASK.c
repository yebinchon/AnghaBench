#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  check_func; } ;
struct pvr2_dvb_adapter {TYPE_3__ channel; int /*<<< orphan*/  lock; int /*<<< orphan*/  buffer_wait_data; } ;
struct pvr2_context {TYPE_2__* hdw; } ;
struct TYPE_6__ {TYPE_1__* hdw_desc; } ;
struct TYPE_5__ {int /*<<< orphan*/  dvb_props; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pvr2_dvb_adapter* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,struct pvr2_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct pvr2_dvb_adapter*) ; 
 int FUNC6 (struct pvr2_dvb_adapter*) ; 
 int FUNC7 (struct pvr2_dvb_adapter*) ; 
 int /*<<< orphan*/  pvr2_dvb_internal_check ; 

struct pvr2_dvb_adapter *FUNC8(struct pvr2_context *pvr)
{
	int ret = 0;
	struct pvr2_dvb_adapter *adap;
	if (!pvr->hdw->hdw_desc->dvb_props) {
		/* Device lacks a digital interface so don't set up
		   the DVB side of the driver either.  For now. */
		return NULL;
	}
	adap = FUNC1(sizeof(*adap), GFP_KERNEL);
	if (!adap) return adap;
	FUNC4(&adap->channel, pvr);
	adap->channel.check_func = pvr2_dvb_internal_check;
	FUNC0(&adap->buffer_wait_data);
	FUNC2(&adap->lock);
	ret = FUNC6(adap);
	if (ret < 0) goto fail1;
	ret = FUNC7(adap);
	if (ret < 0) goto fail2;
	return adap;

fail2:
	FUNC5(adap);
fail1:
	FUNC3(&adap->channel);
	return NULL;
}