#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* name; void* mode; } ;
struct TYPE_9__ {TYPE_3__ attr; int /*<<< orphan*/  show; } ;
struct TYPE_6__ {scalar_t__ aux_firmware_revision_set; } ;
struct bmc_device {TYPE_4__ device_id_attr; TYPE_2__* dev; TYPE_4__ provides_dev_sdrs_attr; TYPE_4__ revision_attr; TYPE_4__ firmware_rev_attr; TYPE_4__ version_attr; TYPE_4__ add_dev_support_attr; TYPE_4__ manufacturer_id_attr; TYPE_4__ product_id_attr; TYPE_4__ aux_firmware_rev_attr; TYPE_1__ id; TYPE_4__ guid_attr; scalar_t__ guid_set; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* S_IRUGO ; 
 int /*<<< orphan*/  add_dev_support_show ; 
 int /*<<< orphan*/  aux_firmware_rev_show ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  device_id_show ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  firmware_rev_show ; 
 int /*<<< orphan*/  guid_show ; 
 int /*<<< orphan*/  ipmi_version_show ; 
 int /*<<< orphan*/  manufacturer_id_show ; 
 int /*<<< orphan*/  product_id_show ; 
 int /*<<< orphan*/  provides_dev_sdrs_show ; 
 int /*<<< orphan*/  revision_show ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC3(struct bmc_device *bmc)
{
	int err;

	bmc->device_id_attr.attr.name = "device_id";
	bmc->device_id_attr.attr.mode = S_IRUGO;
	bmc->device_id_attr.show = device_id_show;
	FUNC2(&bmc->device_id_attr.attr);

	bmc->provides_dev_sdrs_attr.attr.name = "provides_device_sdrs";
	bmc->provides_dev_sdrs_attr.attr.mode = S_IRUGO;
	bmc->provides_dev_sdrs_attr.show = provides_dev_sdrs_show;
	FUNC2(&bmc->provides_dev_sdrs_attr.attr);

	bmc->revision_attr.attr.name = "revision";
	bmc->revision_attr.attr.mode = S_IRUGO;
	bmc->revision_attr.show = revision_show;
	FUNC2(&bmc->revision_attr.attr);

	bmc->firmware_rev_attr.attr.name = "firmware_revision";
	bmc->firmware_rev_attr.attr.mode = S_IRUGO;
	bmc->firmware_rev_attr.show = firmware_rev_show;
	FUNC2(&bmc->firmware_rev_attr.attr);

	bmc->version_attr.attr.name = "ipmi_version";
	bmc->version_attr.attr.mode = S_IRUGO;
	bmc->version_attr.show = ipmi_version_show;
	FUNC2(&bmc->version_attr.attr);

	bmc->add_dev_support_attr.attr.name = "additional_device_support";
	bmc->add_dev_support_attr.attr.mode = S_IRUGO;
	bmc->add_dev_support_attr.show = add_dev_support_show;
	FUNC2(&bmc->add_dev_support_attr.attr);

	bmc->manufacturer_id_attr.attr.name = "manufacturer_id";
	bmc->manufacturer_id_attr.attr.mode = S_IRUGO;
	bmc->manufacturer_id_attr.show = manufacturer_id_show;
	FUNC2(&bmc->manufacturer_id_attr.attr);

	bmc->product_id_attr.attr.name = "product_id";
	bmc->product_id_attr.attr.mode = S_IRUGO;
	bmc->product_id_attr.show = product_id_show;
	FUNC2(&bmc->product_id_attr.attr);

	bmc->guid_attr.attr.name = "guid";
	bmc->guid_attr.attr.mode = S_IRUGO;
	bmc->guid_attr.show = guid_show;
	FUNC2(&bmc->guid_attr.attr);

	bmc->aux_firmware_rev_attr.attr.name = "aux_firmware_revision";
	bmc->aux_firmware_rev_attr.attr.mode = S_IRUGO;
	bmc->aux_firmware_rev_attr.show = aux_firmware_rev_show;
	FUNC2(&bmc->aux_firmware_rev_attr.attr);

	err = FUNC0(&bmc->dev->dev,
			   &bmc->device_id_attr);
	if (err)
		goto out;
	err = FUNC0(&bmc->dev->dev,
			   &bmc->provides_dev_sdrs_attr);
	if (err)
		goto out_devid;
	err = FUNC0(&bmc->dev->dev,
			   &bmc->revision_attr);
	if (err)
		goto out_sdrs;
	err = FUNC0(&bmc->dev->dev,
			   &bmc->firmware_rev_attr);
	if (err)
		goto out_rev;
	err = FUNC0(&bmc->dev->dev,
			   &bmc->version_attr);
	if (err)
		goto out_firm;
	err = FUNC0(&bmc->dev->dev,
			   &bmc->add_dev_support_attr);
	if (err)
		goto out_version;
	err = FUNC0(&bmc->dev->dev,
			   &bmc->manufacturer_id_attr);
	if (err)
		goto out_add_dev;
	err = FUNC0(&bmc->dev->dev,
			   &bmc->product_id_attr);
	if (err)
		goto out_manu;
	if (bmc->id.aux_firmware_revision_set) {
		err = FUNC0(&bmc->dev->dev,
				   &bmc->aux_firmware_rev_attr);
		if (err)
			goto out_prod_id;
	}
	if (bmc->guid_set) {
		err = FUNC0(&bmc->dev->dev,
				   &bmc->guid_attr);
		if (err)
			goto out_aux_firm;
	}

	return 0;

out_aux_firm:
	if (bmc->id.aux_firmware_revision_set)
		FUNC1(&bmc->dev->dev,
				   &bmc->aux_firmware_rev_attr);
out_prod_id:
	FUNC1(&bmc->dev->dev,
			   &bmc->product_id_attr);
out_manu:
	FUNC1(&bmc->dev->dev,
			   &bmc->manufacturer_id_attr);
out_add_dev:
	FUNC1(&bmc->dev->dev,
			   &bmc->add_dev_support_attr);
out_version:
	FUNC1(&bmc->dev->dev,
			   &bmc->version_attr);
out_firm:
	FUNC1(&bmc->dev->dev,
			   &bmc->firmware_rev_attr);
out_rev:
	FUNC1(&bmc->dev->dev,
			   &bmc->revision_attr);
out_sdrs:
	FUNC1(&bmc->dev->dev,
			   &bmc->provides_dev_sdrs_attr);
out_devid:
	FUNC1(&bmc->dev->dev,
			   &bmc->device_id_attr);
out:
	return err;
}