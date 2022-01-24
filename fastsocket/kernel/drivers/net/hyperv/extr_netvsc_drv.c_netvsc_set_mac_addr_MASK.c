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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device_context {struct hv_device* device_ctx; } ;
struct net_device {char* dev_addr; unsigned char addr_assign_type; } ;
struct hv_device {int dummy; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 int FUNC0 (struct net_device*,void*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 struct net_device_context* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct hv_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct net_device *ndev, void *p)
{
	struct net_device_context *ndevctx = FUNC2(ndev);
	struct hv_device *hdev =  ndevctx->device_ctx;
	struct sockaddr *addr = p;
	char save_adr[ETH_ALEN];
	unsigned char save_aatype;
	int err;

	FUNC1(save_adr, ndev->dev_addr, ETH_ALEN);
	save_aatype = ndev->addr_assign_type;

	err = FUNC0(ndev, p);
	if (err != 0)
		return err;

	err = FUNC3(hdev, addr->sa_data);
	if (err != 0) {
		/* roll back to saved MAC */
		FUNC1(ndev->dev_addr, save_adr, ETH_ALEN);
		ndev->addr_assign_type = save_aatype;
	}

	return err;
}