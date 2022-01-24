#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct cx231xx* priv; } ;
struct cx231xx_dvb {TYPE_1__ adapter; } ;
struct TYPE_4__ {int /*<<< orphan*/  max_pkt_size; } ;
struct cx231xx {int mode_tv; TYPE_2__ ts1_mode; int /*<<< orphan*/  i2c_lock; scalar_t__ USE_ISO; } ;

/* Variables and functions */
 int /*<<< orphan*/  CX231XX_DIGITAL_MODE ; 
 int /*<<< orphan*/  CX231XX_DVB_MAX_PACKETS ; 
 int /*<<< orphan*/  CX231XX_DVB_NUM_BUFS ; 
 int /*<<< orphan*/  INDEX_TS1 ; 
 int /*<<< orphan*/  FUNC0 (struct cx231xx*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cx231xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cx231xx*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct cx231xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dvb_bulk_copy ; 
 int /*<<< orphan*/  dvb_isoc_copy ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct cx231xx_dvb *dvb)
{
	int rc;
	struct cx231xx *dev = dvb->adapter.priv;

	if (dev->USE_ISO) {
		FUNC1("DVB transfer mode is ISO.\n");
		FUNC6(&dev->i2c_lock);
		FUNC0(dev, false);
		FUNC4(dev, INDEX_TS1, 4);
		FUNC0(dev, true);
		FUNC7(&dev->i2c_lock);
		rc = FUNC5(dev, CX231XX_DIGITAL_MODE);
		if (rc < 0)
			return rc;
		dev->mode_tv = 1;
		return FUNC3(dev, CX231XX_DVB_MAX_PACKETS,
					CX231XX_DVB_NUM_BUFS,
					dev->ts1_mode.max_pkt_size,
					dvb_isoc_copy);
	} else {
		FUNC1("DVB transfer mode is BULK.\n");
		FUNC4(dev, INDEX_TS1, 0);
		rc = FUNC5(dev, CX231XX_DIGITAL_MODE);
		if (rc < 0)
			return rc;
		dev->mode_tv = 1;
		return FUNC2(dev, CX231XX_DVB_MAX_PACKETS,
					CX231XX_DVB_NUM_BUFS,
					dev->ts1_mode.max_pkt_size,
					dvb_bulk_copy);
	}

}