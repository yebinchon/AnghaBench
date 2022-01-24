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
struct xc {int no; int /*<<< orphan*/  version; int /*<<< orphan*/  type; int /*<<< orphan*/  dev; } ;
struct fw_header {int magic; TYPE_1__* fw_desc; int /*<<< orphan*/  version; int /*<<< orphan*/  type; } ;
struct firmware {void* data; } ;
struct TYPE_2__ {int ofs; int size; int patch_ofs; unsigned int patch_entries; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (void*,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct firmware const*) ; 
 int FUNC4 (struct firmware const**,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 scalar_t__ FUNC6 (struct xc*,unsigned long,unsigned int) ; 
 int FUNC7 (struct xc*,void const*,unsigned int) ; 

int FUNC8(struct xc *x)
{
	int ret;
	char name[16];
	const struct firmware *fw;
	struct fw_header *head;
	unsigned int size;
	int i;
	const void *src;
	unsigned long dst;

	FUNC5(name, "xc%d.bin", x->no);

	ret = FUNC4(&fw, name, x->dev);

	if (ret < 0) {
		FUNC0(x->dev, "request_firmware failed\n");
		return ret;
	}

	head = (struct fw_header *)fw->data;
	if (head->magic != 0x4e657458) {
		if (head->magic == 0x5874654e) {
			FUNC0(x->dev,
			    "firmware magic is 'XteN'. Endianess problems?\n");
			ret = -ENODEV;
			goto exit_release_firmware;
		}
		FUNC0(x->dev, "unrecognized firmware magic 0x%08x\n",
			head->magic);
		ret = -ENODEV;
		goto exit_release_firmware;
	}

	x->type = head->type;
	x->version = head->version;

	ret = -EINVAL;

	for (i = 0; i < 3; i++) {
		src = fw->data + head->fw_desc[i].ofs;
		dst = *(unsigned int *)src;
		src += sizeof (unsigned int);
		size = head->fw_desc[i].size - sizeof (unsigned int);

		if (FUNC6(x, dst, size))
			goto exit_release_firmware;

		FUNC2((void *)FUNC1(dst), src, size);

		src = fw->data + head->fw_desc[i].patch_ofs;
		size = head->fw_desc[i].patch_entries;
		ret = FUNC7(x, src, size);
		if (ret < 0)
			goto exit_release_firmware;
	}

	ret = 0;

      exit_release_firmware:
	FUNC3(fw);

	return ret;
}