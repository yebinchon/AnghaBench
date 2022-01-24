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
struct tape_device {struct tape_3590_rdc_data* discdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  capability; } ;
struct tape_3590_rdc_data {int* data; TYPE_1__ crypt_info; int /*<<< orphan*/  read_back_op; } ;
struct tape_3590_disc_data {int* data; TYPE_1__ crypt_info; int /*<<< orphan*/  read_back_op; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  READ_PREVIOUS ; 
 int /*<<< orphan*/  TAPE390_CRYPT_SUPPORTED_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct tape_3590_rdc_data*) ; 
 struct tape_3590_rdc_data* FUNC3 (int,int) ; 
 struct tape_3590_rdc_data* FUNC4 (int,int) ; 
 int FUNC5 (struct tape_device*,struct tape_3590_rdc_data*) ; 
 int FUNC6 (struct tape_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct tape_device*) ; 
 int FUNC8 (struct tape_device*) ; 

__attribute__((used)) static int
FUNC9(struct tape_device *device)
{
	int rc;
	struct tape_3590_disc_data *data;
	struct tape_3590_rdc_data *rdc_data;

	FUNC0(6, "3590 device setup\n");
	data = FUNC4(sizeof(struct tape_3590_disc_data), GFP_KERNEL | GFP_DMA);
	if (data == NULL)
		return -ENOMEM;
	data->read_back_op = READ_PREVIOUS;
	device->discdata = data;

	rdc_data = FUNC3(sizeof(*rdc_data), GFP_KERNEL | GFP_DMA);
	if (!rdc_data) {
		rc = -ENOMEM;
		goto fail_kmalloc;
	}
	rc = FUNC5(device, rdc_data);
	if (rc) {
		FUNC1(3, "Read device characteristics failed!\n");
		goto fail_rdc_data;
	}
	rc = FUNC8(device);
	if (rc)
		goto fail_rdc_data;
	if (rdc_data->data[31] == 0x13) {
		data->crypt_info.capability |= TAPE390_CRYPT_SUPPORTED_MASK;
		FUNC7(device);
	} else {
		FUNC0(6, "Device has NO crypto support\n");
	}
	/* Try to find out if medium is loaded */
	rc = FUNC6(device);
	if (rc) {
		FUNC1(3, "3590 medium sense returned %d\n", rc);
		goto fail_rdc_data;
	}
	return 0;

fail_rdc_data:
	FUNC2(rdc_data);
fail_kmalloc:
	FUNC2(data);
	return rc;
}