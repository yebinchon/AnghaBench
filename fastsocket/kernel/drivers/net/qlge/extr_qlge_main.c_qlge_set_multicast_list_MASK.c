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
typedef  int /*<<< orphan*/  u8 ;
struct ql_adapter {int /*<<< orphan*/  flags; int /*<<< orphan*/  ndev; } ;
struct net_device {int flags; scalar_t__ mc_count; struct dev_mc_list* mc_list; } ;
struct dev_mc_list {scalar_t__ dmi_addr; struct dev_mc_list* next; } ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  MAC_ADDR_TYPE_MULTI_MAC ; 
 scalar_t__ MAX_MULTICAST_ENTRIES ; 
 int /*<<< orphan*/  QL_ALLMULTI ; 
 int /*<<< orphan*/  QL_PROMISCUOUS ; 
 int /*<<< orphan*/  RT_IDX_ALLMULTI_SLOT ; 
 int /*<<< orphan*/  RT_IDX_MCAST ; 
 int /*<<< orphan*/  RT_IDX_MCAST_MATCH ; 
 int /*<<< orphan*/  RT_IDX_MCAST_MATCH_SLOT ; 
 int /*<<< orphan*/  RT_IDX_PROMISCUOUS_SLOT ; 
 int /*<<< orphan*/  RT_IDX_VALID ; 
 int /*<<< orphan*/  SEM_MAC_ADDR_MASK ; 
 int /*<<< orphan*/  SEM_RT_IDX_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hw ; 
 struct ql_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ql_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ql_adapter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (struct ql_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC9(struct net_device *ndev)
{
	struct ql_adapter *qdev = FUNC1(ndev);
	struct dev_mc_list *mc_ptr;
	int i, status;

	status = FUNC3(qdev, SEM_RT_IDX_MASK);
	if (status)
		return;
	/*
	 * Set or clear promiscuous mode if a
	 * transition is taking place.
	 */
	if (ndev->flags & IFF_PROMISC) {
		if (!FUNC8(QL_PROMISCUOUS, &qdev->flags)) {
			if (FUNC6
			    (qdev, RT_IDX_PROMISCUOUS_SLOT, RT_IDX_VALID, 1)) {
				FUNC2(qdev, hw, qdev->ndev,
					  "Failed to set promiscous mode.\n");
			} else {
				FUNC7(QL_PROMISCUOUS, &qdev->flags);
			}
		}
	} else {
		if (FUNC8(QL_PROMISCUOUS, &qdev->flags)) {
			if (FUNC6
			    (qdev, RT_IDX_PROMISCUOUS_SLOT, RT_IDX_VALID, 0)) {
				FUNC2(qdev, hw, qdev->ndev,
					  "Failed to clear promiscous mode.\n");
			} else {
				FUNC0(QL_PROMISCUOUS, &qdev->flags);
			}
		}
	}

	/*
	 * Set or clear all multicast mode if a
	 * transition is taking place.
	 */
	if ((ndev->flags & IFF_ALLMULTI) ||
	    (ndev->mc_count > MAX_MULTICAST_ENTRIES)) {
		if (!FUNC8(QL_ALLMULTI, &qdev->flags)) {
			if (FUNC6
			    (qdev, RT_IDX_ALLMULTI_SLOT, RT_IDX_MCAST, 1)) {
				FUNC2(qdev, hw, qdev->ndev,
					  "Failed to set all-multi mode.\n");
			} else {
				FUNC7(QL_ALLMULTI, &qdev->flags);
			}
		}
	} else {
		if (FUNC8(QL_ALLMULTI, &qdev->flags)) {
			if (FUNC6
			    (qdev, RT_IDX_ALLMULTI_SLOT, RT_IDX_MCAST, 0)) {
				FUNC2(qdev, hw, qdev->ndev,
					  "Failed to clear all-multi mode.\n");
			} else {
				FUNC0(QL_ALLMULTI, &qdev->flags);
			}
		}
	}

	if (ndev->mc_count) {
		status = FUNC3(qdev, SEM_MAC_ADDR_MASK);
		if (status)
			goto exit;
		for (i = 0, mc_ptr = ndev->mc_list; mc_ptr;
		     i++, mc_ptr = mc_ptr->next)
			if (FUNC5(qdev, (u8 *) mc_ptr->dmi_addr,
						MAC_ADDR_TYPE_MULTI_MAC, i)) {
				FUNC2(qdev, hw, qdev->ndev,
					  "Failed to loadmulticast address.\n");
				FUNC4(qdev, SEM_MAC_ADDR_MASK);
				goto exit;
			}
		FUNC4(qdev, SEM_MAC_ADDR_MASK);
		if (FUNC6
		    (qdev, RT_IDX_MCAST_MATCH_SLOT, RT_IDX_MCAST_MATCH, 1)) {
			FUNC2(qdev, hw, qdev->ndev,
				  "Failed to set multicast match mode.\n");
		} else {
			FUNC7(QL_ALLMULTI, &qdev->flags);
		}
	}
exit:
	FUNC4(qdev, SEM_RT_IDX_MASK);
}