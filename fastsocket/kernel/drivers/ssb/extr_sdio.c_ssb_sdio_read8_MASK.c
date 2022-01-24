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
typedef  int u8 ;
typedef  int u16 ;
struct ssb_device {struct ssb_bus* bus; } ;
struct ssb_bus {int sdio_sbaddr; int /*<<< orphan*/  host_sdio; } ;

/* Variables and functions */
 int SBSDIO_SB_OFT_ADDR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ssb_bus*) ; 
 int /*<<< orphan*/  FUNC5 (struct ssb_bus*,struct ssb_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static u8 FUNC7(struct ssb_device *dev, u16 offset)
{
	struct ssb_bus *bus = dev->bus;
	u8 val = 0xff;
	int error = 0;

	FUNC1(bus->host_sdio);
	if (FUNC6(FUNC5(bus, dev)))
		goto out;
	offset |= bus->sdio_sbaddr & 0xffff;
	offset &= SBSDIO_SB_OFT_ADDR_MASK;
	val = FUNC2(bus->host_sdio, offset, &error);
	if (error) {
		FUNC0(FUNC4(bus), "%04X:%04X > %02x, error %d\n",
			bus->sdio_sbaddr >> 16, offset, val, error);
	}
out:
	FUNC3(bus->host_sdio);

	return val;
}