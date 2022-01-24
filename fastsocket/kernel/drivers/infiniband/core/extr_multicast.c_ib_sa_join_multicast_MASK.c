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
typedef  size_t u8 ;
struct ib_sa_mcmember_rec {int /*<<< orphan*/  mgid; } ;
struct ib_sa_multicast {int (* callback ) (int,struct ib_sa_multicast*) ;void* context; int /*<<< orphan*/  comp_mask; struct ib_sa_mcmember_rec rec; } ;
struct mcast_member {struct ib_sa_multicast multicast; int /*<<< orphan*/  group; int /*<<< orphan*/  state; int /*<<< orphan*/  refcount; int /*<<< orphan*/  comp; struct ib_sa_client* client; } ;
struct mcast_device {size_t start_port; int /*<<< orphan*/ * port; } ;
struct ib_sa_client {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  ib_sa_comp_mask ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 struct ib_sa_multicast* FUNC0 (int) ; 
 int /*<<< orphan*/  MCAST_JOINING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct mcast_device* FUNC3 (struct ib_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_sa_client*) ; 
 int /*<<< orphan*/  FUNC5 (struct ib_sa_client*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mcast_member*) ; 
 struct mcast_member* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcast_client ; 
 int /*<<< orphan*/  FUNC9 (struct mcast_member*) ; 

struct ib_sa_multicast *
FUNC10(struct ib_sa_client *client,
		     struct ib_device *device, u8 port_num,
		     struct ib_sa_mcmember_rec *rec,
		     ib_sa_comp_mask comp_mask, gfp_t gfp_mask,
		     int (*callback)(int status,
				     struct ib_sa_multicast *multicast),
		     void *context)
{
	struct mcast_device *dev;
	struct mcast_member *member;
	struct ib_sa_multicast *multicast;
	int ret;

	dev = FUNC3(device, &mcast_client);
	if (!dev)
		return FUNC0(-ENODEV);

	member = FUNC8(sizeof *member, gfp_mask);
	if (!member)
		return FUNC0(-ENOMEM);

	FUNC4(client);
	member->client = client;
	member->multicast.rec = *rec;
	member->multicast.comp_mask = comp_mask;
	member->multicast.callback = callback;
	member->multicast.context = context;
	FUNC6(&member->comp);
	FUNC2(&member->refcount, 1);
	member->state = MCAST_JOINING;

	member->group = FUNC1(&dev->port[port_num - dev->start_port],
				      &rec->mgid, gfp_mask);
	if (!member->group) {
		ret = -ENOMEM;
		goto err;
	}

	/*
	 * The user will get the multicast structure in their callback.  They
	 * could then free the multicast structure before we can return from
	 * this routine.  So we save the pointer to return before queuing
	 * any callback.
	 */
	multicast = &member->multicast;
	FUNC9(member);
	return multicast;

err:
	FUNC5(client);
	FUNC7(member);
	return FUNC0(ret);
}