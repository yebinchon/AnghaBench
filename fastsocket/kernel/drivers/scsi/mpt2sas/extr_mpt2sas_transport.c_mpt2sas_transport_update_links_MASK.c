#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct sas_identify {int dummy; } ;
struct TYPE_5__ {scalar_t__ sas_address; } ;
struct _sas_phy {TYPE_2__ remote_identify; TYPE_1__* phy; int /*<<< orphan*/  attached_handle; } ;
struct _sas_node {struct _sas_phy* phy; } ;
struct MPT2SAS_ADAPTER {int logging_level; int /*<<< orphan*/  sas_node_lock; scalar_t__ pci_error_recovery; scalar_t__ shost_recovery; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  negotiated_linkrate; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 size_t MPI2_SAS_NEG_LINK_RATE_1_5 ; 
 int MPT_DEBUG_TRANSPORT ; 
 int /*<<< orphan*/  FUNC0 (struct MPT2SAS_ADAPTER*,struct _sas_node*,struct _sas_phy*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 struct _sas_node* FUNC2 (struct MPT2SAS_ADAPTER*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct MPT2SAS_ADAPTER*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,unsigned long long,size_t,size_t,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC8(struct MPT2SAS_ADAPTER *ioc,
     u64 sas_address, u16 handle, u8 phy_number, u8 link_rate)
{
	unsigned long flags;
	struct _sas_node *sas_node;
	struct _sas_phy *mpt2sas_phy;

	if (ioc->shost_recovery || ioc->pci_error_recovery)
		return;

	FUNC6(&ioc->sas_node_lock, flags);
	sas_node = FUNC2(ioc, sas_address);
	if (!sas_node) {
		FUNC7(&ioc->sas_node_lock, flags);
		return;
	}

	mpt2sas_phy = &sas_node->phy[phy_number];
	mpt2sas_phy->attached_handle = handle;
	FUNC7(&ioc->sas_node_lock, flags);
	if (handle && (link_rate >= MPI2_SAS_NEG_LINK_RATE_1_5)) {
		FUNC3(ioc, handle,
		    &mpt2sas_phy->remote_identify);
		FUNC0(ioc, sas_node,
		    mpt2sas_phy, mpt2sas_phy->remote_identify.sas_address);
	} else
		FUNC5(&mpt2sas_phy->remote_identify, 0 , sizeof(struct
		    sas_identify));

	if (mpt2sas_phy->phy)
		mpt2sas_phy->phy->negotiated_linkrate =
		    FUNC1(link_rate);

	if ((ioc->logging_level & MPT_DEBUG_TRANSPORT))
		FUNC4(KERN_INFO, &mpt2sas_phy->phy->dev,
		    "refresh: parent sas_addr(0x%016llx),\n"
		    "\tlink_rate(0x%02x), phy(%d)\n"
		    "\tattached_handle(0x%04x), sas_addr(0x%016llx)\n",
		    (unsigned long long)sas_address,
		    link_rate, phy_number, handle, (unsigned long long)
		    mpt2sas_phy->remote_identify.sas_address);
}