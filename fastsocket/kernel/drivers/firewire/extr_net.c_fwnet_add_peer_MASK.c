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
typedef  int u64 ;
struct fwnet_peer {int guid; int /*<<< orphan*/  peer_link; int /*<<< orphan*/  node_id; int /*<<< orphan*/  generation; int /*<<< orphan*/  speed; int /*<<< orphan*/  max_payload; scalar_t__ datagram_label; scalar_t__ pdg_size; int /*<<< orphan*/  pd_list; int /*<<< orphan*/  fifo; struct fwnet_device* dev; } ;
struct fwnet_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  peer_list; } ;
struct fw_unit {int /*<<< orphan*/  device; } ;
struct fw_device {int* config_rom; int /*<<< orphan*/  node_id; int /*<<< orphan*/  generation; int /*<<< orphan*/  max_rec; int /*<<< orphan*/  max_speed; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FWNET_NO_FIFO_ADDR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct fwnet_peer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fwnet_peer* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct fwnet_device *dev,
			  struct fw_unit *unit, struct fw_device *device)
{
	struct fwnet_peer *peer;

	peer = FUNC3(sizeof(*peer), GFP_KERNEL);
	if (!peer)
		return -ENOMEM;

	FUNC1(&unit->device, peer);

	peer->dev = dev;
	peer->guid = (u64)device->config_rom[3] << 32 | device->config_rom[4];
	peer->fifo = FWNET_NO_FIFO_ADDR;
	FUNC0(&peer->pd_list);
	peer->pdg_size = 0;
	peer->datagram_label = 0;
	peer->speed = device->max_speed;
	peer->max_payload = FUNC2(device->max_rec, peer->speed);

	peer->generation = device->generation;
	FUNC5();
	peer->node_id = device->node_id;

	FUNC6(&dev->lock);
	FUNC4(&peer->peer_link, &dev->peer_list);
	FUNC7(&dev->lock);

	return 0;
}