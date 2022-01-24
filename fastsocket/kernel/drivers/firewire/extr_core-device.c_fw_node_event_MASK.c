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
struct fw_node {struct fw_device* data; int /*<<< orphan*/  node_id; int /*<<< orphan*/  link_on; } ;
struct fw_device {int is_local; int /*<<< orphan*/  work; int /*<<< orphan*/  state; int /*<<< orphan*/  generation; int /*<<< orphan*/  node_id; int /*<<< orphan*/  client_list; int /*<<< orphan*/  client_list_mutex; int /*<<< orphan*/  node; int /*<<< orphan*/  card; } ;
struct fw_card {int /*<<< orphan*/  link; int /*<<< orphan*/  generation; struct fw_node* local_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_DEVICE_GONE ; 
 int /*<<< orphan*/  FW_DEVICE_INITIALIZING ; 
 int /*<<< orphan*/  FW_DEVICE_RUNNING ; 
#define  FW_NODE_CREATED 133 
#define  FW_NODE_DESTROYED 132 
#define  FW_NODE_INITIATED_RESET 131 
#define  FW_NODE_LINK_OFF 130 
#define  FW_NODE_LINK_ON 129 
#define  FW_NODE_UPDATED 128 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  INITIAL_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHUTDOWN_DELAY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fw_card*) ; 
 int /*<<< orphan*/  fw_device_init ; 
 int /*<<< orphan*/  fw_device_refresh ; 
 int /*<<< orphan*/  fw_device_shutdown ; 
 int /*<<< orphan*/  fw_device_update ; 
 int /*<<< orphan*/  FUNC8 (struct fw_node*) ; 
 struct fw_device* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 

void FUNC14(struct fw_card *card, struct fw_node *node, int event)
{
	struct fw_device *device;

	switch (event) {
	case FW_NODE_CREATED:
	case FW_NODE_LINK_ON:
		if (!node->link_on)
			break;
 create:
		device = FUNC9(sizeof(*device), GFP_ATOMIC);
		if (device == NULL)
			break;

		/*
		 * Do minimal intialization of the device here, the
		 * rest will happen in fw_device_init().
		 *
		 * Attention:  A lot of things, even fw_device_get(),
		 * cannot be done before fw_device_init() finished!
		 * You can basically just check device->state and
		 * schedule work until then, but only while holding
		 * card->lock.
		 */
		FUNC5(&device->state, FW_DEVICE_INITIALIZING);
		device->card = FUNC7(card);
		device->node = FUNC8(node);
		device->node_id = node->node_id;
		device->generation = card->generation;
		device->is_local = node == card->local_node;
		FUNC11(&device->client_list_mutex);
		FUNC1(&device->client_list);

		/*
		 * Set the node data to point back to this device so
		 * FW_NODE_UPDATED callbacks can update the node_id
		 * and generation for the device.
		 */
		node->data = device;

		/*
		 * Many devices are slow to respond after bus resets,
		 * especially if they are bus powered and go through
		 * power-up after getting plugged in.  We schedule the
		 * first config rom scan half a second after bus reset.
		 */
		FUNC0(&device->work, fw_device_init);
		FUNC12(&device->work, INITIAL_DELAY);
		break;

	case FW_NODE_INITIATED_RESET:
		device = node->data;
		if (device == NULL)
			goto create;

		device->node_id = node->node_id;
		FUNC13();  /* update node_id before generation */
		device->generation = card->generation;
		if (FUNC3(&device->state,
			    FW_DEVICE_RUNNING,
			    FW_DEVICE_INITIALIZING) == FW_DEVICE_RUNNING) {
			FUNC2(&device->work, fw_device_refresh);
			FUNC12(&device->work,
				device->is_local ? 0 : INITIAL_DELAY);
		}
		break;

	case FW_NODE_UPDATED:
		if (!node->link_on || node->data == NULL)
			break;

		device = node->data;
		device->node_id = node->node_id;
		FUNC13();  /* update node_id before generation */
		device->generation = card->generation;
		if (FUNC4(&device->state) == FW_DEVICE_RUNNING) {
			FUNC2(&device->work, fw_device_update);
			FUNC12(&device->work, 0);
		}
		break;

	case FW_NODE_DESTROYED:
	case FW_NODE_LINK_OFF:
		if (!node->data)
			break;

		/*
		 * Destroy the device associated with the node.  There
		 * are two cases here: either the device is fully
		 * initialized (FW_DEVICE_RUNNING) or we're in the
		 * process of reading its config rom
		 * (FW_DEVICE_INITIALIZING).  If it is fully
		 * initialized we can reuse device->work to schedule a
		 * full fw_device_shutdown().  If not, there's work
		 * scheduled to read it's config rom, and we just put
		 * the device in shutdown state to have that code fail
		 * to create the device.
		 */
		device = node->data;
		if (FUNC6(&device->state,
				FW_DEVICE_GONE) == FW_DEVICE_RUNNING) {
			FUNC2(&device->work, fw_device_shutdown);
			FUNC12(&device->work,
				FUNC10(&card->link) ? 0 : SHUTDOWN_DELAY);
		}
		break;
	}
}