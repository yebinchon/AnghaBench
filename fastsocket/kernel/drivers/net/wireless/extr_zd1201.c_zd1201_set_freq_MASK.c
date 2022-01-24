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
struct zd1201 {int dummy; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {scalar_t__ e; short m; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZD1201_RID_CNFOWNCHANNEL ; 
 short FUNC0 (short) ; 
 struct zd1201* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct zd1201*) ; 
 int FUNC3 (struct zd1201*,int /*<<< orphan*/ ,short) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev,
    struct iw_request_info *info, struct iw_freq *freq, char *extra)
{
	struct zd1201 *zd = FUNC1(dev);
	short channel = 0;
	int err;

	if (freq->e == 0)
		channel = freq->m;
	else {
		channel = FUNC0(freq->m);
		if (channel < 0)
			channel = 0;
	}

	err = FUNC3(zd, ZD1201_RID_CNFOWNCHANNEL, channel);
	if (err)
		return err;

	FUNC2(zd);

	return 0;
}