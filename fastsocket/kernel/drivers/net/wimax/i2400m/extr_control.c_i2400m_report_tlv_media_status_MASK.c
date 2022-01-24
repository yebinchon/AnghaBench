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
struct wimax_dev {struct net_device* net_dev; } ;
struct net_device {int dummy; } ;
struct i2400m_tlv_media_status {int /*<<< orphan*/  media_status; } ;
struct i2400m {struct wimax_dev wimax_dev; } ;
struct device {int dummy; } ;
typedef  enum i2400m_media_status { ____Placeholder_i2400m_media_status } i2400m_media_status ;

/* Variables and functions */
#define  I2400M_MEDIA_STATUS_LINK_DOWN 130 
#define  I2400M_MEDIA_STATUS_LINK_RENEW 129 
#define  I2400M_MEDIA_STATUS_LINK_UP 128 
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct i2400m*,struct i2400m_tlv_media_status const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400m*,struct i2400m_tlv_media_status const*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct device* FUNC3 (struct i2400m*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

__attribute__((used)) static
void FUNC7(struct i2400m *i2400m,
				    const struct i2400m_tlv_media_status *ms)
{
	struct device *dev = FUNC3(i2400m);
	struct wimax_dev *wimax_dev = &i2400m->wimax_dev;
	struct net_device *net_dev = wimax_dev->net_dev;
	enum i2400m_media_status status = FUNC4(ms->media_status);

	FUNC1(3, dev, "(i2400m %p ms %p [%u])\n", i2400m, ms, status);

	switch (status) {
	case I2400M_MEDIA_STATUS_LINK_UP:
		FUNC6(net_dev);
		break;
	case I2400M_MEDIA_STATUS_LINK_DOWN:
		FUNC5(net_dev);
		break;
	/*
	 * This is the network telling us we need to retrain the DHCP
	 * lease -- so far, we are trusting the WiMAX Network Service
	 * in user space to pick this up and poke the DHCP client.
	 */
	case I2400M_MEDIA_STATUS_LINK_RENEW:
		FUNC6(net_dev);
		break;
	default:
		FUNC2(dev, "HW BUG? unknown media status %u\n",
			status);
	};
	FUNC0(3, dev, "(i2400m %p ms %p [%u]) = void\n",
		i2400m, ms, status);
}