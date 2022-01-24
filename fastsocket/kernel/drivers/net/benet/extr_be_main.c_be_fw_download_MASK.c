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
typedef  int /*<<< orphan*/  u8 ;
struct image_hdr {int /*<<< orphan*/  imageid; } ;
struct flash_file_hdr_g3 {int /*<<< orphan*/  num_imgs; } ;
struct firmware {int /*<<< orphan*/ * data; } ;
struct be_dma_mem {int size; int /*<<< orphan*/  dma; int /*<<< orphan*/  va; } ;
struct be_cmd_write_flashrom {int dummy; } ;
struct be_adapter {int asic_rev; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int UFI_TYPE2 ; 
#define  UFI_TYPE3 130 
#define  UFI_TYPE3R 129 
#define  UFI_TYPE4 128 
 int FUNC0 (struct be_adapter*,struct firmware const*,struct be_dma_mem*,int) ; 
 int FUNC1 (struct be_adapter*,struct firmware const*,struct be_dma_mem*,int) ; 
 int FUNC2 (struct be_adapter*,struct flash_file_hdr_g3*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct be_adapter *adapter, const struct firmware* fw)
{
	struct flash_file_hdr_g3 *fhdr3;
	struct image_hdr *img_hdr_ptr = NULL;
	struct be_dma_mem flash_cmd;
	const u8 *p;
	int status = 0, i = 0, num_imgs = 0, ufi_type = 0;

	flash_cmd.size = sizeof(struct be_cmd_write_flashrom);
	flash_cmd.va = FUNC5(&adapter->pdev->dev, flash_cmd.size,
					  &flash_cmd.dma, GFP_KERNEL);
	if (!flash_cmd.va) {
		status = -ENOMEM;
		goto be_fw_exit;
	}

	p = fw->data;
	fhdr3 = (struct flash_file_hdr_g3 *)p;

	ufi_type = FUNC2(adapter, fhdr3);

	num_imgs = FUNC7(fhdr3->num_imgs);
	for (i = 0; i < num_imgs; i++) {
		img_hdr_ptr = (struct image_hdr *)(fw->data +
				(sizeof(struct flash_file_hdr_g3) +
				 i * sizeof(struct image_hdr)));
		if (FUNC7(img_hdr_ptr->imageid) == 1) {
			switch (ufi_type) {
			case UFI_TYPE4:
				status = FUNC1(adapter, fw,
							&flash_cmd, num_imgs);
				break;
			case UFI_TYPE3R:
				status = FUNC0(adapter, fw, &flash_cmd,
						      num_imgs);
				break;
			case UFI_TYPE3:
				/* Do not flash this ufi on BE3-R cards */
				if (adapter->asic_rev < 0x10)
					status = FUNC0(adapter, fw,
							      &flash_cmd,
							      num_imgs);
				else {
					status = -1;
					FUNC3(&adapter->pdev->dev,
						"Can't load BE3 UFI on BE3R\n");
				}
			}
		}
	}

	if (ufi_type == UFI_TYPE2)
		status = FUNC0(adapter, fw, &flash_cmd, 0);
	else if (ufi_type == -1)
		status = -1;

	FUNC6(&adapter->pdev->dev, flash_cmd.size, flash_cmd.va,
			  flash_cmd.dma);
	if (status) {
		FUNC3(&adapter->pdev->dev, "Firmware load error\n");
		goto be_fw_exit;
	}

	FUNC4(&adapter->pdev->dev, "Firmware flashed successfully\n");

be_fw_exit:
	return status;
}