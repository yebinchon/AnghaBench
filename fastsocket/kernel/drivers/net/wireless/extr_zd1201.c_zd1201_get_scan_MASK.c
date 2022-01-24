#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct zd1201 {int mac_enabled; int rxlen; int* rxdata; scalar_t__ rxdatas; int /*<<< orphan*/  rxdataq; scalar_t__ ap; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int length; scalar_t__ flags; } ;
struct TYPE_11__ {int qual; int noise; int level; int updated; } ;
struct TYPE_10__ {int length; int flags; } ;
struct TYPE_9__ {int value; scalar_t__ disabled; scalar_t__ fixed; } ;
struct TYPE_8__ {int m; scalar_t__ e; } ;
struct TYPE_7__ {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
struct TYPE_12__ {TYPE_5__ qual; TYPE_4__ data; TYPE_3__ bitrate; TYPE_2__ freq; int /*<<< orphan*/  mode; TYPE_1__ ap_addr; } ;
struct iw_event {TYPE_6__ u; int /*<<< orphan*/  cmd; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  IWEVQUAL ; 
 int IW_ENCODE_DISABLED ; 
 int IW_ENCODE_ENABLED ; 
 int /*<<< orphan*/  IW_EV_ADDR_LEN ; 
 int /*<<< orphan*/  IW_EV_FREQ_LEN ; 
 int /*<<< orphan*/  IW_EV_PARAM_LEN ; 
 int /*<<< orphan*/  IW_EV_QUAL_LEN ; 
 int /*<<< orphan*/  IW_EV_UINT_LEN ; 
 int /*<<< orphan*/  IW_MODE_ADHOC ; 
 int /*<<< orphan*/  IW_MODE_MASTER ; 
 int IW_SCAN_MAX_DATA ; 
 int /*<<< orphan*/  SIOCGIWAP ; 
 int /*<<< orphan*/  SIOCGIWENCODE ; 
 int /*<<< orphan*/  SIOCGIWESSID ; 
 int /*<<< orphan*/  SIOCGIWFREQ ; 
 int /*<<< orphan*/  SIOCGIWMODE ; 
 int /*<<< orphan*/  SIOCGIWRATE ; 
 int /*<<< orphan*/  ZD1201_CMDCODE_INQUIRE ; 
 scalar_t__ ZD1201_INQ_SCANRESULTS ; 
 char* FUNC0 (struct iw_request_info*,char*,char*,struct iw_event*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct iw_request_info*,char*,char*,struct iw_event*,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 struct zd1201* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct zd1201*) ; 
 int FUNC7 (struct zd1201*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct zd1201*) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev,
    struct iw_request_info *info, struct iw_point *srq, char *extra)
{
	struct zd1201 *zd = FUNC4(dev);
	int err, i, j, enabled_save;
	struct iw_event iwe;
	char *cev = extra;
	char *end_buf = extra + IW_SCAN_MAX_DATA;

	/* No scanning in AP mode */
	if (zd->ap)
		return -EOPNOTSUPP;

	/* Scan doesn't seem to work if disabled */
	enabled_save = zd->mac_enabled;
	FUNC8(zd);

	zd->rxdatas = 0;
	err = FUNC7(zd, ZD1201_CMDCODE_INQUIRE, 
	     ZD1201_INQ_SCANRESULTS, 0, 0);
	if (err)
		return err;

	FUNC5(zd->rxdataq, zd->rxdatas);
	if (!zd->rxlen)
		return -EIO;

	if (FUNC2(*(__le16*)&zd->rxdata[2]) != ZD1201_INQ_SCANRESULTS)
		return -EIO;

	for(i=8; i<zd->rxlen; i+=62) {
		iwe.cmd = SIOCGIWAP;
		iwe.u.ap_addr.sa_family = ARPHRD_ETHER;
		FUNC3(iwe.u.ap_addr.sa_data, zd->rxdata+i+6, 6);
		cev = FUNC0(info, cev, end_buf,
					   &iwe, IW_EV_ADDR_LEN);

		iwe.cmd = SIOCGIWESSID;
		iwe.u.data.length = zd->rxdata[i+16];
		iwe.u.data.flags = 1;
		cev = FUNC1(info, cev, end_buf,
					   &iwe, zd->rxdata+i+18);

		iwe.cmd = SIOCGIWMODE;
		if (zd->rxdata[i+14]&0x01)
			iwe.u.mode = IW_MODE_MASTER;
		else
			iwe.u.mode = IW_MODE_ADHOC;
		cev = FUNC0(info, cev, end_buf,
					   &iwe, IW_EV_UINT_LEN);
		
		iwe.cmd = SIOCGIWFREQ;
		iwe.u.freq.m = zd->rxdata[i+0];
		iwe.u.freq.e = 0;
		cev = FUNC0(info, cev, end_buf,
					   &iwe, IW_EV_FREQ_LEN);
		
		iwe.cmd = SIOCGIWRATE;
		iwe.u.bitrate.fixed = 0;
		iwe.u.bitrate.disabled = 0;
		for (j=0; j<10; j++) if (zd->rxdata[i+50+j]) {
			iwe.u.bitrate.value = (zd->rxdata[i+50+j]&0x7f)*500000;
			cev = FUNC0(info, cev, end_buf,
						   &iwe, IW_EV_PARAM_LEN);
		}
		
		iwe.cmd = SIOCGIWENCODE;
		iwe.u.data.length = 0;
		if (zd->rxdata[i+14]&0x10)
			iwe.u.data.flags = IW_ENCODE_ENABLED;
		else
			iwe.u.data.flags = IW_ENCODE_DISABLED;
		cev = FUNC1(info, cev, end_buf, &iwe, NULL);
		
		iwe.cmd = IWEVQUAL;
		iwe.u.qual.qual = zd->rxdata[i+4];
		iwe.u.qual.noise= zd->rxdata[i+2]/10-100;
		iwe.u.qual.level = (256+zd->rxdata[i+4]*100)/255-100;
		iwe.u.qual.updated = 7;
		cev = FUNC0(info, cev, end_buf,
					   &iwe, IW_EV_QUAL_LEN);
	}

	if (!enabled_save)
		FUNC6(zd);

	srq->length = cev - extra;
	srq->flags = 0;

	return 0;
}