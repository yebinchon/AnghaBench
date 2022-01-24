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
struct tg3 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int EEXIST ; 
 int /*<<< orphan*/  RX_CPU_HWBKPT ; 
 int /*<<< orphan*/  TG3_57766_FW_HANDSHAKE ; 
 scalar_t__ TG3_SBROM_IN_SERVICE_LOOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct tg3*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct tg3 *tp)
{
	const int iters = 1000;
	int i;
	u32 val;

	/* Wait for boot code to complete initialization and enter service
	 * loop. It is then safe to download service patches
	 */
	for (i = 0; i < iters; i++) {
		if (FUNC3(RX_CPU_HWBKPT) == TG3_SBROM_IN_SERVICE_LOOP)
			break;

		FUNC4(10);
	}

	if (i == iters) {
		FUNC0(tp->dev, "Boot code not ready for service patches\n");
		return -EBUSY;
	}

	val = FUNC2(tp, TG3_57766_FW_HANDSHAKE);
	if (val & 0xff) {
		FUNC1(tp->dev,
			    "Other patches exist. Not downloading EEE patch\n");
		return -EEXIST;
	}

	return 0;
}