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
struct TYPE_2__ {scalar_t__ length; } ;
struct qe_firmware {TYPE_1__ header; } ;
struct firmware {scalar_t__ size; scalar_t__ data; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int firmware_loaded ; 
 int FUNC1 (struct qe_firmware*) ; 
 int /*<<< orphan*/  FUNC2 (struct firmware const*) ; 

__attribute__((used)) static void FUNC3(const struct firmware *fw, void *context)
{
	struct qe_firmware *firmware;
	struct device *dev = context;
	int ret;

	if (!fw) {
		FUNC0(dev, "firmware not found\n");
		return;
	}

	firmware = (struct qe_firmware *) fw->data;

	if (firmware->header.length != fw->size) {
		FUNC0(dev, "invalid firmware\n");
		goto out;
	}

	ret = FUNC1(firmware);
	if (ret) {
		FUNC0(dev, "could not load firmware\n");
		goto out;
	}

	firmware_loaded = 1;
 out:
	FUNC2(fw);
}