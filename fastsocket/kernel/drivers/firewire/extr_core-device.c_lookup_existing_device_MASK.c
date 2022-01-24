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
struct fw_node {int /*<<< orphan*/  node_id; struct fw_device* data; } ;
struct fw_device {int /*<<< orphan*/  work; scalar_t__ config_rom_retries; int /*<<< orphan*/  generation; int /*<<< orphan*/  node_id; int /*<<< orphan*/  max_speed; struct fw_node* node; int /*<<< orphan*/  state; int /*<<< orphan*/  config_rom; struct fw_card* card; } ;
struct fw_card {int /*<<< orphan*/  lock; struct fw_node* root_node; int /*<<< orphan*/  generation; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FW_DEVICE_GONE ; 
 int /*<<< orphan*/  FW_DEVICE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct fw_device* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  fw_device_rwsem ; 
 int /*<<< orphan*/  fw_device_update ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_card*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct device *dev, void *data)
{
	struct fw_device *old = FUNC4(dev);
	struct fw_device *new = data;
	struct fw_card *card = new->card;
	int match = 0;

	if (!FUNC7(dev))
		return 0;

	FUNC3(&fw_device_rwsem); /* serialize config_rom access */
	FUNC11(&card->lock);  /* serialize node access */

	if (FUNC8(old->config_rom, new->config_rom, 6 * 4) == 0 &&
	    FUNC1(&old->state,
			   FW_DEVICE_GONE,
			   FW_DEVICE_RUNNING) == FW_DEVICE_GONE) {
		struct fw_node *current_node = new->node;
		struct fw_node *obsolete_node = old->node;

		new->node = obsolete_node;
		new->node->data = new;
		old->node = current_node;
		old->node->data = old;

		old->max_speed = new->max_speed;
		old->node_id = current_node->node_id;
		FUNC10();  /* update node_id before generation */
		old->generation = card->generation;
		old->config_rom_retries = 0;
		FUNC5("rediscovered device %s\n", FUNC2(dev));

		FUNC0(&old->work, fw_device_update);
		FUNC9(&old->work, 0);

		if (current_node == card->root_node)
			FUNC6(card, 0);

		match = 1;
	}

	FUNC12(&card->lock);
	FUNC13(&fw_device_rwsem);

	return match;
}