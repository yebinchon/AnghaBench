#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ihex_binrec {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct firmware {scalar_t__ data; } ;
struct TYPE_5__ {int chipset; unsigned long* warp_pipe_phys; TYPE_1__* warp; } ;
typedef  TYPE_2__ drm_mga_private_t ;
struct TYPE_4__ {unsigned char* handle; unsigned long offset; unsigned int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EINVAL ; 
 int ENOMEM ; 
 char* FIRMWARE_G200 ; 
 char* FIRMWARE_G400 ; 
 scalar_t__ FUNC2 (struct platform_device*) ; 
#define  MGA_CARD_TYPE_G200 130 
#define  MGA_CARD_TYPE_G400 129 
#define  MGA_CARD_TYPE_G550 128 
 int MGA_MAX_G200_PIPES ; 
 int MGA_MAX_G400_PIPES ; 
 unsigned int FUNC3 (unsigned int) ; 
 int FUNC4 (struct platform_device*) ; 
 unsigned int FUNC5 (unsigned int) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 struct ihex_binrec* FUNC7 (struct ihex_binrec const*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long*,int /*<<< orphan*/ ,int) ; 
 struct platform_device* FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct firmware const*) ; 
 int FUNC13 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 

int FUNC14(drm_mga_private_t *dev_priv)
{
	unsigned char *vcbase = dev_priv->warp->handle;
	unsigned long pcbase = dev_priv->warp->offset;
	const char *firmware_name;
	struct platform_device *pdev;
	const struct firmware *fw = NULL;
	const struct ihex_binrec *rec;
	unsigned int size;
	int n_pipes, where;
	int rc = 0;

	switch (dev_priv->chipset) {
	case MGA_CARD_TYPE_G400:
	case MGA_CARD_TYPE_G550:
		firmware_name = FIRMWARE_G400;
		n_pipes = MGA_MAX_G400_PIPES;
		break;
	case MGA_CARD_TYPE_G200:
		firmware_name = FIRMWARE_G200;
		n_pipes = MGA_MAX_G200_PIPES;
		break;
	default:
		return -EINVAL;
	}

	pdev = FUNC10("mga_warp", 0, NULL, 0);
	if (FUNC2(pdev)) {
		FUNC1("mga: Failed to register microcode\n");
		return FUNC4(pdev);
	}
	rc = FUNC13(&fw, firmware_name, &pdev->dev);
	FUNC11(pdev);
	if (rc) {
		FUNC1("mga: Failed to load microcode \"%s\"\n",
			  firmware_name);
		return rc;
	}

	size = 0;
	where = 0;
	for (rec = (const struct ihex_binrec *)fw->data;
	     rec;
	     rec = FUNC7(rec)) {
		size += FUNC5(FUNC6(rec->len));
		where++;
	}

	if (where != n_pipes) {
		FUNC1("mga: Invalid microcode \"%s\"\n", firmware_name);
		rc = -EINVAL;
		goto out;
	}
	size = FUNC3(size);
	FUNC0("MGA ucode size = %d bytes\n", size);
	if (size > dev_priv->warp->size) {
		FUNC1("microcode too large! (%u > %lu)\n",
			  size, dev_priv->warp->size);
		rc = -ENOMEM;
		goto out;
	}

	FUNC9(dev_priv->warp_pipe_phys, 0, sizeof(dev_priv->warp_pipe_phys));

	where = 0;
	for (rec = (const struct ihex_binrec *)fw->data;
	     rec;
	     rec = FUNC7(rec)) {
		unsigned int src_size, dst_size;

		FUNC0(" pcbase = 0x%08lx  vcbase = %p\n", pcbase, vcbase);
		dev_priv->warp_pipe_phys[where] = pcbase;
		src_size = FUNC6(rec->len);
		dst_size = FUNC5(src_size);
		FUNC8(vcbase, rec->data, src_size);
		pcbase += dst_size;
		vcbase += dst_size;
		where++;
	}

out:
	FUNC12(fw);
	return rc;
}