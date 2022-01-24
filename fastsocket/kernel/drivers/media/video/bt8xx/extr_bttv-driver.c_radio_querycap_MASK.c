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
struct v4l2_capability {int /*<<< orphan*/  capabilities; int /*<<< orphan*/  version; int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct file {int dummy; } ;
struct bttv_fh {struct bttv* btv; } ;
struct TYPE_3__ {int /*<<< orphan*/  pci; } ;
struct bttv {TYPE_1__ c; TYPE_2__* radio_dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTTV_VERSION_CODE ; 
 int /*<<< orphan*/  V4L2_CAP_TUNER ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct file *file, void *priv,
					struct v4l2_capability *cap)
{
	struct bttv_fh *fh = priv;
	struct bttv *btv = fh->btv;

	FUNC2(cap->driver, "bttv");
	FUNC3(cap->card, btv->radio_dev->name, sizeof(cap->card));
	FUNC1(cap->bus_info, "PCI:%s", FUNC0(btv->c.pci));
	cap->version = BTTV_VERSION_CODE;
	cap->capabilities = V4L2_CAP_TUNER;

	return 0;
}