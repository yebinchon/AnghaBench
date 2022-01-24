#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct spider_net_card {TYPE_1__* netdev; TYPE_2__* pdev; } ;
struct firmware {int size; int /*<<< orphan*/  const* data; } ;
struct device_node {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOENT ; 
 int SPIDER_NET_FIRMWARE_LEN ; 
 int /*<<< orphan*/  SPIDER_NET_FIRMWARE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (struct spider_net_card*) ; 
 int /*<<< orphan*/ * FUNC2 (struct device_node*,char*,int*) ; 
 struct device_node* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware*) ; 
 scalar_t__ FUNC5 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct spider_net_card*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int
FUNC7(struct spider_net_card *card)
{
	struct firmware *firmware = NULL;
	struct device_node *dn;
	const u8 *fw_prop = NULL;
	int err = -ENOENT;
	int fw_size;

	if (FUNC5((const struct firmware **)&firmware,
			     SPIDER_NET_FIRMWARE_NAME, &card->pdev->dev) == 0) {
		if ( (firmware->size != SPIDER_NET_FIRMWARE_LEN) &&
		     FUNC1(card) ) {
			FUNC0(&card->netdev->dev,
			       "Incorrect size of spidernet firmware in " \
			       "filesystem. Looking in host firmware...\n");
			goto try_host_fw;
		}
		err = FUNC6(card, firmware->data);

		FUNC4(firmware);
		if (err)
			goto try_host_fw;

		goto done;
	}

try_host_fw:
	dn = FUNC3(card->pdev);
	if (!dn)
		goto out_err;

	fw_prop = FUNC2(dn, "firmware", &fw_size);
	if (!fw_prop)
		goto out_err;

	if ( (fw_size != SPIDER_NET_FIRMWARE_LEN) &&
	     FUNC1(card) ) {
		FUNC0(&card->netdev->dev,
		       "Incorrect size of spidernet firmware in host firmware\n");
		goto done;
	}

	err = FUNC6(card, fw_prop);

done:
	return err;
out_err:
	if (FUNC1(card))
		FUNC0(&card->netdev->dev,
		       "Couldn't find spidernet firmware in filesystem " \
		       "or host firmware\n");
	return err;
}