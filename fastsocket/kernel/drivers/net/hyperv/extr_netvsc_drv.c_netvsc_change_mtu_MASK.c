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
struct netvsc_device_info {int /*<<< orphan*/  ring_size; } ;
struct netvsc_device {scalar_t__ nvsp_version; int start_remove; scalar_t__ destroy; } ;
struct net_device_context {struct hv_device* device_ctx; int /*<<< orphan*/  work; int /*<<< orphan*/  dwork; } ;
struct net_device {int mtu; } ;
struct hv_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ETH_DATA_LEN ; 
 int NETVSC_MTU ; 
 scalar_t__ NVSP_PROTOCOL_VERSION_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct netvsc_device* FUNC2 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hv_device*,struct net_device*) ; 
 struct net_device_context* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  ring_size ; 
 int /*<<< orphan*/  FUNC7 (struct hv_device*,struct netvsc_device_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct hv_device*) ; 

__attribute__((used)) static int FUNC9(struct net_device *ndev, int mtu)
{
	struct net_device_context *ndevctx = FUNC4(ndev);
	struct hv_device *hdev =  ndevctx->device_ctx;
	struct netvsc_device *nvdev = FUNC2(hdev);
	struct netvsc_device_info device_info;
	int limit = ETH_DATA_LEN;

	if (nvdev == NULL || nvdev->destroy)
		return -ENODEV;

	if (nvdev->nvsp_version == NVSP_PROTOCOL_VERSION_2)
		limit = NETVSC_MTU;

	if (mtu < 68 || mtu > limit)
		return -EINVAL;

	nvdev->start_remove = true;
	FUNC0(&ndevctx->dwork);
	FUNC1(&ndevctx->work);
	FUNC5(ndev);
	FUNC8(hdev);

	ndev->mtu = mtu;

	ndevctx->device_ctx = hdev;
	FUNC3(hdev, ndev);
	device_info.ring_size = ring_size;
	FUNC7(hdev, &device_info);
	FUNC6(ndev);

	return 0;
}