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
struct v4l2_tuner {scalar_t__ index; int signal; int /*<<< orphan*/  audmode; int /*<<< orphan*/  capability; int /*<<< orphan*/  rxsubchans; int /*<<< orphan*/  rangehigh; int /*<<< orphan*/  rangelow; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct gemtek_pci {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GEMTEK_PCI_RANGE_HIGH ; 
 int /*<<< orphan*/  GEMTEK_PCI_RANGE_LOW ; 
 int /*<<< orphan*/  V4L2_TUNER_CAP_LOW ; 
 int /*<<< orphan*/  V4L2_TUNER_MODE_MONO ; 
 int /*<<< orphan*/  V4L2_TUNER_RADIO ; 
 int /*<<< orphan*/  V4L2_TUNER_SUB_MONO ; 
 int FUNC0 (struct gemtek_pci*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct gemtek_pci* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
					struct v4l2_tuner *v)
{
	struct gemtek_pci *card = FUNC2(file);

	if (v->index > 0)
		return -EINVAL;

	FUNC1(v->name, "FM", sizeof(v->name));
	v->type = V4L2_TUNER_RADIO;
	v->rangelow = GEMTEK_PCI_RANGE_LOW;
	v->rangehigh = GEMTEK_PCI_RANGE_HIGH;
	v->rxsubchans = V4L2_TUNER_SUB_MONO;
	v->capability = V4L2_TUNER_CAP_LOW;
	v->audmode = V4L2_TUNER_MODE_MONO;
	v->signal = 0xffff * FUNC0(card);
	return 0;
}