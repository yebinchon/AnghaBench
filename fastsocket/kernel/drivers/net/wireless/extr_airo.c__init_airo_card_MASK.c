#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int device; } ;
struct net_device {unsigned short irq; int base_addr; char* name; struct airo_info* ml_priv; int /*<<< orphan*/  dev_addr; TYPE_2__* wireless_data; int /*<<< orphan*/ * wireless_handlers; int /*<<< orphan*/ * netdev_ops; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ * spy_data; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct airo_info {int flags; int wep_capable; int max_wep_idx; int bssListRidLen; struct pci_dev* pci; int /*<<< orphan*/  pcimem; int /*<<< orphan*/  pciaux; int /*<<< orphan*/  shared_dma; int /*<<< orphan*/  shared; struct net_device* wifidev; int /*<<< orphan*/ * fids; int /*<<< orphan*/  bssListNext; int /*<<< orphan*/  bssListFirst; struct net_device* dev; int /*<<< orphan*/  bap_read; TYPE_2__ wireless_data; int /*<<< orphan*/  spy_data; int /*<<< orphan*/  txq; int /*<<< orphan*/ * tfm; int /*<<< orphan*/  thr_wait; TYPE_1__ config; int /*<<< orphan*/  sem; int /*<<< orphan*/  aux_lock; scalar_t__ jobs; } ;
struct TYPE_9__ {int /*<<< orphan*/  ext_priv_flags; } ;
struct TYPE_8__ {int softCap; int /*<<< orphan*/  softSubVer; int /*<<< orphan*/  softVer; } ;
typedef  TYPE_3__ CapabilityRid ;
typedef  int /*<<< orphan*/  BSSListRidExtra ;
typedef  int /*<<< orphan*/  BSSListRid ;

/* Variables and functions */
 int /*<<< orphan*/  AIRO_DEF_MTU ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int EBUSY ; 
 int EIO ; 
 int /*<<< orphan*/  FLAG_FLASHING ; 
 int /*<<< orphan*/  FLAG_MPI ; 
 int FLAG_RADIO_DOWN ; 
 int /*<<< orphan*/  FLAG_REGISTERED ; 
 int /*<<< orphan*/  FLAG_WPA_CAPABLE ; 
 int /*<<< orphan*/  IFF_TX_SKB_SHARING ; 
 int MAX_FIDS ; 
 int /*<<< orphan*/  PCI_SHARED_LEN ; 
 int /*<<< orphan*/  RID_BSSLISTFIRST ; 
 int /*<<< orphan*/  RID_BSSLISTNEXT ; 
 int /*<<< orphan*/  RID_WPA_BSSLISTFIRST ; 
 int /*<<< orphan*/  RID_WPA_BSSLISTNEXT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct device*) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (struct airo_info*) ; 
 int /*<<< orphan*/  airo_handler_def ; 
 int /*<<< orphan*/  airo_netdev_ops ; 
 scalar_t__ FUNC2 (struct airo_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct airo_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct airo_info*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 struct net_device* FUNC8 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct airo_info*) ; 
 int /*<<< orphan*/  ether_setup ; 
 int /*<<< orphan*/  fast_bap_read ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 struct net_device* FUNC13 (struct airo_info*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct airo_info*,struct pci_dev*) ; 
 int /*<<< orphan*/  mpi_netdev_ops ; 
 int /*<<< orphan*/  FUNC17 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 TYPE_5__* FUNC19 (struct net_device*) ; 
 struct airo_info* FUNC20 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ probe ; 
 int FUNC22 (struct airo_info*,TYPE_3__*,int) ; 
 int FUNC23 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC24 (int,int) ; 
 int /*<<< orphan*/  FUNC25 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int*) ; 
 int FUNC29 (struct airo_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC30 (struct net_device*,struct airo_info*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (char*,char*) ; 
 scalar_t__ FUNC34 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC35 (struct airo_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC36 (struct net_device*) ; 

__attribute__((used)) static struct net_device *FUNC37( unsigned short irq, int port,
					   int is_pcmcia, struct pci_dev *pci,
					   struct device *dmdev )
{
	struct net_device *dev;
	struct airo_info *ai;
	int i, rc;
	CapabilityRid cap_rid;

	/* Create the network device object. */
	dev = FUNC8(sizeof(*ai), "", ether_setup);
	if (!dev) {
		FUNC6("", "Couldn't alloc_etherdev");
		return NULL;
	}

	ai = dev->ml_priv = FUNC20(dev);
	ai->wifidev = NULL;
	ai->flags = 1 << FLAG_RADIO_DOWN;
	ai->jobs = 0;
	ai->dev = dev;
	if (pci && (pci->device == 0x5000 || pci->device == 0xa504)) {
		FUNC5("", "Found an MPI350 card");
		FUNC28(FLAG_MPI, &ai->flags);
	}
	FUNC32(&ai->aux_lock);
	FUNC27(&ai->sem, 1);
	ai->config.len = 0;
	ai->pci = pci;
	FUNC12 (&ai->thr_wait);
	ai->tfm = NULL;
	FUNC1(ai);

	if (FUNC2 (ai))
		goto err_out_free;
	FUNC4 (ai);

	FUNC31 (&ai->txq);

	/* The Airo-specific entries in the device structure. */
	if (FUNC34(FLAG_MPI,&ai->flags))
		dev->netdev_ops = &mpi_netdev_ops;
	else
		dev->netdev_ops = &airo_netdev_ops;
	dev->wireless_handlers = &airo_handler_def;
	ai->wireless_data.spy_data = &ai->spy_data;
	dev->wireless_data = &ai->wireless_data;
	dev->irq = irq;
	dev->base_addr = port;
	FUNC19(dev)->ext_priv_flags &= ~IFF_TX_SKB_SHARING;

	FUNC0(dev, dmdev);

	FUNC26 (dev, 1);
	FUNC18(400);

	if (!is_pcmcia) {
		if (!FUNC25(dev->base_addr, 64, DRV_NAME)) {
			rc = -EBUSY;
			FUNC6(dev->name, "Couldn't request region");
			goto err_out_nets;
		}
	}

	if (FUNC34(FLAG_MPI,&ai->flags)) {
		if (FUNC16(ai, pci)) {
			FUNC6("", "Could not map memory");
			goto err_out_res;
		}
	}

	if (probe) {
		if (FUNC29(ai, dev->dev_addr, 1) != SUCCESS) {
			FUNC6(dev->name, "MAC could not be enabled" );
			rc = -EIO;
			goto err_out_map;
		}
	} else if (!FUNC34(FLAG_MPI,&ai->flags)) {
		ai->bap_read = fast_bap_read;
		FUNC28(FLAG_FLASHING, &ai->flags);
	}

	FUNC33(dev->name, "eth%d");
	rc = FUNC23(dev);
	if (rc) {
		FUNC6(dev->name, "Couldn't register_netdev");
		goto err_out_map;
	}
	ai->wifidev = FUNC13(ai, dev);
	if (!ai->wifidev)
		goto err_out_reg;

	rc = FUNC22(ai, &cap_rid, 1);
	if (rc != SUCCESS) {
		rc = -EIO;
		goto err_out_wifi;
	}
	/* WEP capability discovery */
	ai->wep_capable = (cap_rid.softCap & FUNC9(0x02)) ? 1 : 0;
	ai->max_wep_idx = (cap_rid.softCap & FUNC9(0x80)) ? 3 : 0;

	FUNC7(dev->name, "Firmware version %x.%x.%02x",
	                ((FUNC15(cap_rid.softVer) >> 8) & 0xF),
	                (FUNC15(cap_rid.softVer) & 0xFF),
	                FUNC15(cap_rid.softSubVer));

	/* Test for WPA support */
	/* Only firmware versions 5.30.17 or better can do WPA */
	if (FUNC15(cap_rid.softVer) > 0x530
	 || (FUNC15(cap_rid.softVer) == 0x530
	      && FUNC15(cap_rid.softSubVer) >= 17)) {
		FUNC7(ai->dev->name, "WPA supported.");

		FUNC28(FLAG_WPA_CAPABLE, &ai->flags);
		ai->bssListFirst = RID_WPA_BSSLISTFIRST;
		ai->bssListNext = RID_WPA_BSSLISTNEXT;
		ai->bssListRidLen = sizeof(BSSListRid);
	} else {
		FUNC7(ai->dev->name, "WPA unsupported with firmware "
			"versions older than 5.30.17.");

		ai->bssListFirst = RID_BSSLISTFIRST;
		ai->bssListNext = RID_BSSLISTNEXT;
		ai->bssListRidLen = sizeof(BSSListRid) - sizeof(BSSListRidExtra);
	}

	FUNC28(FLAG_REGISTERED,&ai->flags);
	FUNC7(dev->name, "MAC enabled %pM", dev->dev_addr);

	/* Allocate the transmit buffers */
	if (probe && !FUNC34(FLAG_MPI,&ai->flags))
		for( i = 0; i < MAX_FIDS; i++ )
			ai->fids[i] = FUNC35(ai,AIRO_DEF_MTU,i>=MAX_FIDS/2);

	if (FUNC30(dev, dev->ml_priv) < 0)
		goto err_out_wifi;

	return dev;

err_out_wifi:
	FUNC36(ai->wifidev);
	FUNC11(ai->wifidev);
err_out_reg:
	FUNC36(dev);
err_out_map:
	if (FUNC34(FLAG_MPI,&ai->flags) && pci) {
		FUNC21(pci, PCI_SHARED_LEN, ai->shared, ai->shared_dma);
		FUNC14(ai->pciaux);
		FUNC14(ai->pcimem);
		FUNC17(ai->pci);
	}
err_out_res:
	if (!is_pcmcia)
	        FUNC24( dev->base_addr, 64 );
err_out_nets:
	FUNC3(ai);
	FUNC10(ai);
err_out_free:
	FUNC11(dev);
	return NULL;
}