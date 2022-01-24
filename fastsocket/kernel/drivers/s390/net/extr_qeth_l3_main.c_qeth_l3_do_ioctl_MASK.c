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
struct TYPE_4__ {int /*<<< orphan*/  guestlan; int /*<<< orphan*/  type; } ;
struct qeth_card {scalar_t__ state; TYPE_2__ info; } ;
struct qeth_arp_cache_entry {int dummy; } ;
struct net_device {struct qeth_card* ml_priv; } ;
struct mii_ioctl_data {int /*<<< orphan*/  reg_num; int /*<<< orphan*/  phy_id; int /*<<< orphan*/  val_out; } ;
struct TYPE_3__ {int /*<<< orphan*/  ifru_data; int /*<<< orphan*/  ifru_ivalue; } ;
struct ifreq {TYPE_1__ ifr_ifru; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_NET_ADMIN ; 
 scalar_t__ CARD_STATE_SOFTSETUP ; 
 scalar_t__ CARD_STATE_UP ; 
 int EFAULT ; 
 int EINVAL ; 
 int ENODEV ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int /*<<< orphan*/  QETH_CARD_TYPE_OSD ; 
 int /*<<< orphan*/  QETH_CARD_TYPE_OSX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,int) ; 
#define  SIOCGMIIPHY 136 
#define  SIOCGMIIREG 135 
#define  SIOC_QETH_ADP_SET_SNMP_CONTROL 134 
#define  SIOC_QETH_ARP_ADD_ENTRY 133 
#define  SIOC_QETH_ARP_FLUSH_CACHE 132 
#define  SIOC_QETH_ARP_QUERY_INFO 131 
#define  SIOC_QETH_ARP_REMOVE_ENTRY 130 
#define  SIOC_QETH_ARP_SET_NO_ENTRIES 129 
#define  SIOC_QETH_GET_CARD_TYPE 128 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qeth_arp_cache_entry*,int /*<<< orphan*/ ,int) ; 
 struct mii_ioctl_data* FUNC3 (struct ifreq*) ; 
 int FUNC4 (struct qeth_card*,struct qeth_arp_cache_entry*) ; 
 int FUNC5 (struct qeth_card*) ; 
 int FUNC6 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct qeth_card*,struct qeth_arp_cache_entry*) ; 
 int FUNC8 (struct qeth_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct qeth_card*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct net_device *dev, struct ifreq *rq, int cmd)
{
	struct qeth_card *card = dev->ml_priv;
	struct qeth_arp_cache_entry arp_entry;
	struct mii_ioctl_data *mii_data;
	int rc = 0;

	if (!card)
		return -ENODEV;

	if ((card->state != CARD_STATE_UP) &&
		(card->state != CARD_STATE_SOFTSETUP))
		return -ENODEV;

	switch (cmd) {
	case SIOC_QETH_ARP_SET_NO_ENTRIES:
		if (!FUNC1(CAP_NET_ADMIN)) {
			rc = -EPERM;
			break;
		}
		rc = FUNC8(card, rq->ifr_ifru.ifru_ivalue);
		break;
	case SIOC_QETH_ARP_QUERY_INFO:
		if (!FUNC1(CAP_NET_ADMIN)) {
			rc = -EPERM;
			break;
		}
		rc = FUNC6(card, rq->ifr_ifru.ifru_data);
		break;
	case SIOC_QETH_ARP_ADD_ENTRY:
		if (!FUNC1(CAP_NET_ADMIN)) {
			rc = -EPERM;
			break;
		}
		if (FUNC2(&arp_entry, rq->ifr_ifru.ifru_data,
				   sizeof(struct qeth_arp_cache_entry)))
			rc = -EFAULT;
		else
			rc = FUNC4(card, &arp_entry);
		break;
	case SIOC_QETH_ARP_REMOVE_ENTRY:
		if (!FUNC1(CAP_NET_ADMIN)) {
			rc = -EPERM;
			break;
		}
		if (FUNC2(&arp_entry, rq->ifr_ifru.ifru_data,
				   sizeof(struct qeth_arp_cache_entry)))
			rc = -EFAULT;
		else
			rc = FUNC7(card, &arp_entry);
		break;
	case SIOC_QETH_ARP_FLUSH_CACHE:
		if (!FUNC1(CAP_NET_ADMIN)) {
			rc = -EPERM;
			break;
		}
		rc = FUNC5(card);
		break;
	case SIOC_QETH_ADP_SET_SNMP_CONTROL:
		rc = FUNC10(card, rq->ifr_ifru.ifru_data);
		break;
	case SIOC_QETH_GET_CARD_TYPE:
		if ((card->info.type == QETH_CARD_TYPE_OSD ||
		     card->info.type == QETH_CARD_TYPE_OSX) &&
		    !card->info.guestlan)
			return 1;
		return 0;
		break;
	case SIOCGMIIPHY:
		mii_data = FUNC3(rq);
		mii_data->phy_id = 0;
		break;
	case SIOCGMIIREG:
		mii_data = FUNC3(rq);
		if (mii_data->phy_id != 0)
			rc = -EINVAL;
		else
			mii_data->val_out = FUNC9(dev,
							mii_data->phy_id,
							mii_data->reg_num);
		break;
	default:
		rc = -EOPNOTSUPP;
	}
	if (rc)
		FUNC0(TRACE, 2, "ioce%d", rc);
	return rc;
}