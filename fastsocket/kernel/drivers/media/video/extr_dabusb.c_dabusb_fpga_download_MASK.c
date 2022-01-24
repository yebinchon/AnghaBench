#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct firmware {int* data; } ;
typedef  TYPE_2__* pdabusb_t ;
typedef  TYPE_3__* pbulk_transfer_t ;
typedef  int /*<<< orphan*/  bulk_transfer_t ;
struct TYPE_15__ {int pipe; int* data; int size; } ;
struct TYPE_14__ {TYPE_1__* usbdev; } ;
struct TYPE_13__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC1 (TYPE_2__*,TYPE_3__*) ; 
 int FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 TYPE_3__* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct firmware const*) ; 
 int FUNC10 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11 (pdabusb_t s, const char *fname)
{
	pbulk_transfer_t b = FUNC6 (sizeof (bulk_transfer_t), GFP_KERNEL);
	const struct firmware *fw;
	unsigned int blen, n;
	int ret;

	FUNC3("Enter dabusb_fpga_download (internal)");

	if (!b) {
		FUNC4(&s->usbdev->dev,
			"kmalloc(sizeof(bulk_transfer_t))==NULL\n");
		return -ENOMEM;
	}

	ret = FUNC10(&fw, "dabusb/bitstream.bin", &s->usbdev->dev);
	if (ret) {
		FUNC4(&s->usbdev->dev,
			"Failed to load \"dabusb/bitstream.bin\": %d\n", ret);
		FUNC5(b);
		return ret;
	}

	b->pipe = 1;
	ret = FUNC1 (s, b);
	FUNC7 (10);
	blen = fw->data[73] + (fw->data[72] << 8);

	FUNC3("Bitstream len: %i", blen);

	b->data[0] = 0x2b;
	b->data[1] = 0;
	b->data[2] = 0;
	b->data[3] = 60;

	for (n = 0; n <= blen + 60; n += 60) {
		// some cclks for startup
		b->size = 64;
		FUNC8 (b->data + 4, fw->data + 74 + n, 60);
		ret = FUNC0 (s, b);
		if (ret < 0) {
			FUNC4(&s->usbdev->dev, "dabusb_bulk failed.\n");
			break;
		}
		FUNC7 (1);
	}

	ret = FUNC2 (s, b);
	FUNC5 (b);
	FUNC9(fw);

	FUNC3("exit dabusb_fpga_download");

	return ret;
}