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
struct sk_buff {TYPE_1__* dev; scalar_t__ data; } ;
struct fwnet_header {int /*<<< orphan*/  h_proto; int /*<<< orphan*/  h_dest; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ ETH_P_IP ; 
 int FUNC0 (unsigned char*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct sk_buff *skb)
{
	struct fwnet_header *h = (struct fwnet_header *)skb->data;

	if (FUNC3(&h->h_proto) == ETH_P_IP)
		return FUNC0((unsigned char *)&h->h_dest, skb);

	FUNC2("%s: unable to resolve type %04x addresses\n",
		  skb->dev->name, FUNC1(h->h_proto));
	return 0;
}