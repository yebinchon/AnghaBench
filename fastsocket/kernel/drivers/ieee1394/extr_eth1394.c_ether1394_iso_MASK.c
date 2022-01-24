#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct net_device {int dummy; } ;
struct hpsb_iso_packet_info {int len; int channel; scalar_t__ offset; } ;
struct TYPE_4__ {scalar_t__ kvirt; } ;
struct hpsb_iso {int first_packet; int buf_packets; TYPE_3__* host; TYPE_1__ data_buf; struct hpsb_iso_packet_info* infos; } ;
struct eth1394_priv {int dummy; } ;
struct eth1394_host_info {struct net_device* dev; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_5__ {int broadcast_channel; } ;
struct TYPE_6__ {TYPE_2__ csr; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int ALL_NODES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int ETHER1394_GASP_SPECIFIER_ID ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int LOCAL_BUS ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  eth1394_highlevel ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,int,char*,unsigned int) ; 
 struct eth1394_host_info* FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC4 (struct hpsb_iso*) ; 
 int /*<<< orphan*/  FUNC5 (struct hpsb_iso*,int) ; 
 struct eth1394_priv* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static void FUNC8(struct hpsb_iso *iso)
{
	__be32 *data;
	char *buf;
	struct eth1394_host_info *hi;
	struct net_device *dev;
	struct eth1394_priv *priv;
	unsigned int len;
	u32 specifier_id;
	u16 source_id;
	int i;
	int nready;

	hi = FUNC3(&eth1394_highlevel, iso->host);
	if (FUNC7(!hi)) {
		FUNC0(KERN_ERR, "No net device at fw-host%d\n",
				iso->host->id);
		return;
	}

	dev = hi->dev;

	nready = FUNC4(iso);
	for (i = 0; i < nready; i++) {
		struct hpsb_iso_packet_info *info =
			&iso->infos[(iso->first_packet + i) % iso->buf_packets];
		data = (__be32 *)(iso->data_buf.kvirt + info->offset);

		/* skip over GASP header */
		buf = (char *)data + 8;
		len = info->len - 8;

		specifier_id = (FUNC1(data[0]) & 0xffff) << 8 |
			       (FUNC1(data[1]) & 0xff000000) >> 24;
		source_id = FUNC1(data[0]) >> 16;

		priv = FUNC6(dev);

		if (info->channel != (iso->host->csr.broadcast_channel & 0x3f)
		    || specifier_id != ETHER1394_GASP_SPECIFIER_ID) {
			/* This packet is not for us */
			continue;
		}
		FUNC2(dev, source_id, LOCAL_BUS | ALL_NODES,
				       buf, len);
	}

	FUNC5(iso, i);

}