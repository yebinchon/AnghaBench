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
struct TYPE_2__ {struct em28xx* priv; } ;
struct em28xx_dvb {TYPE_1__ adapter; } ;
struct em28xx {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EM28XX_DIGITAL_MODE ; 
 int /*<<< orphan*/  EM28XX_DVB_MAX_PACKETS ; 
 int /*<<< orphan*/  EM28XX_DVB_NUM_BUFS ; 
 int /*<<< orphan*/  dvb_isoc_copy ; 
 int FUNC0 (struct em28xx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct em28xx*) ; 
 int FUNC2 (struct em28xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct em28xx_dvb *dvb)
{
	int rc;
	struct em28xx *dev = dvb->adapter.priv;
	int max_dvb_packet_size;

	FUNC3(dev->udev, 0, 1);
	rc = FUNC2(dev, EM28XX_DIGITAL_MODE);
	if (rc < 0)
		return rc;

	max_dvb_packet_size = FUNC1(dev);

	return FUNC0(dev, EM28XX_DVB_MAX_PACKETS,
				EM28XX_DVB_NUM_BUFS, max_dvb_packet_size,
				dvb_isoc_copy);
}