#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vlan_group {int dummy; } ;
struct qeth_card {struct vlan_group* vlangrp; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {void* ml_priv; } ;

/* Variables and functions */
 int QETH_VLAN_CARD ; 
 int VLAN_GROUP_ARRAY_LEN ; 
 TYPE_1__* FUNC0 (struct net_device*) ; 
 struct net_device* FUNC1 (struct vlan_group*,int) ; 

__attribute__((used)) static int FUNC2(struct net_device *dev,
			struct qeth_card *card)
{
	int rc = 0;
	struct vlan_group *vg;
	int i;

	vg = card->vlangrp;
	if (!vg)
		return rc;

	for (i = 0; i < VLAN_GROUP_ARRAY_LEN; i++) {
		if (FUNC1(vg, i) == dev) {
			rc = QETH_VLAN_CARD;
			break;
		}
	}

	if (rc && !(FUNC0(dev)->ml_priv == (void *)card))
		return 0;

	return rc;
}