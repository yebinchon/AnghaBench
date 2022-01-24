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
struct saa7146_pci_extension_data {int dummy; } ;
struct saa7146_dev {scalar_t__ ext_priv; } ;
struct hexium {scalar_t__ cur_input; int /*<<< orphan*/  video_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  vidioc_s_input; int /*<<< orphan*/  vidioc_g_input; int /*<<< orphan*/  vidioc_enum_input; } ;
struct TYPE_5__ {TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  FUNC1 (struct saa7146_dev*) ; 
 int /*<<< orphan*/  hexium_num ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct saa7146_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct saa7146_dev*,TYPE_2__*) ; 
 int /*<<< orphan*/  vidioc_enum_input ; 
 int /*<<< orphan*/  vidioc_g_input ; 
 int /*<<< orphan*/  vidioc_s_input ; 
 TYPE_2__ vv_data ; 

__attribute__((used)) static int FUNC5(struct saa7146_dev *dev, struct saa7146_pci_extension_data *info)
{
	struct hexium *hexium = (struct hexium *) dev->ext_priv;

	FUNC0((".\n"));

	FUNC4(dev, &vv_data);
	vv_data.ops.vidioc_enum_input = vidioc_enum_input;
	vv_data.ops.vidioc_g_input = vidioc_g_input;
	vv_data.ops.vidioc_s_input = vidioc_s_input;
	if (0 != FUNC3(&hexium->video_dev, dev, "hexium orion", VFL_TYPE_GRABBER)) {
		FUNC2("hexium_orion: cannot register capture v4l2 device. skipping.\n");
		return -1;
	}

	FUNC2("hexium_orion: found 'hexium orion' frame grabber-%d.\n", hexium_num);
	hexium_num++;

	/* the rest */
	hexium->cur_input = 0;
	FUNC1(dev);

	return 0;
}