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
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct firmware {int size; scalar_t__ data; } ;

/* Variables and functions */
 struct firmware const* bfi_fw ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 *
FUNC2(struct pci_dev *pdev, u32 **bfi_image,
			u32 *bfi_image_size, char *fw_name)
{
	const struct firmware *fw;

	if (FUNC1(&fw, fw_name, &pdev->dev)) {
		FUNC0("Can't locate firmware %s\n", fw_name);
		goto error;
	}

	*bfi_image = (u32 *)fw->data;
	*bfi_image_size = fw->size/sizeof(u32);
	bfi_fw = fw;

	return *bfi_image;
error:
	return NULL;
}