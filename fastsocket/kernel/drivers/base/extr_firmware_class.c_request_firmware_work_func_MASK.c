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
struct firmware_work {int /*<<< orphan*/  module; int /*<<< orphan*/  context; int /*<<< orphan*/  (* cont ) (struct firmware const*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  uevent; int /*<<< orphan*/  device; int /*<<< orphan*/  name; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct firmware_work*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(void *arg)
{
	struct firmware_work *fw_work = arg;
	const struct firmware *fw;
	int ret;
	if (!arg) {
		FUNC0(1);
		return 0;
	}
	ret = FUNC1(&fw, fw_work->name, fw_work->device,
		fw_work->uevent);

	fw_work->cont(fw, fw_work->context);

	FUNC3(fw_work->module);
	FUNC2(fw_work);
	return ret;
}