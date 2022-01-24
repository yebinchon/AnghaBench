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
struct tg3_firmware_hdr {int /*<<< orphan*/  base_addr; } ;
struct tg3 {TYPE_1__* fw; } ;
struct TYPE_2__ {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  NO_NVRAM ; 
 scalar_t__ TG3_57766_FW_BASE_ADDR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tg3*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tg3*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct tg3_firmware_hdr*) ; 
 scalar_t__ FUNC3 (struct tg3*) ; 
 int /*<<< orphan*/  FUNC4 (struct tg3*) ; 
 scalar_t__ FUNC5 (struct tg3*) ; 

__attribute__((used)) static void FUNC6(struct tg3 *tp)
{
	struct tg3_firmware_hdr *fw_hdr;

	if (!FUNC1(tp, NO_NVRAM))
		return;

	if (FUNC5(tp))
		return;

	if (!tp->fw)
		return;

	/* This firmware blob has a different format than older firmware
	 * releases as given below. The main difference is we have fragmented
	 * data to be written to non-contiguous locations.
	 *
	 * In the beginning we have a firmware header identical to other
	 * firmware which consists of version, base addr and length. The length
	 * here is unused and set to 0xffffffff.
	 *
	 * This is followed by a series of firmware fragments which are
	 * individually identical to previous firmware. i.e. they have the
	 * firmware header and followed by data for that fragment. The version
	 * field of the individual fragment header is unused.
	 */

	fw_hdr = (struct tg3_firmware_hdr *)tp->fw->data;
	if (FUNC0(fw_hdr->base_addr) != TG3_57766_FW_BASE_ADDR)
		return;

	if (FUNC3(tp))
		return;

	/* tg3_load_firmware_cpu() will always succeed for the 57766 */
	FUNC2(tp, 0, TG3_57766_FW_BASE_ADDR, 0, fw_hdr);

	FUNC4(tp);
}