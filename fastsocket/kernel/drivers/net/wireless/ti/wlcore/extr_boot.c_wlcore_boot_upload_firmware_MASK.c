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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct wl1271 {int /*<<< orphan*/ * fw; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_BOOT ; 
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct wl1271*,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

int FUNC4(struct wl1271 *wl)
{
	u32 chunks, addr, len;
	int ret = 0;
	u8 *fw;

	fw = wl->fw;
	chunks = FUNC0((__be32 *) fw);
	fw += sizeof(u32);

	FUNC2(DEBUG_BOOT, "firmware chunks to be uploaded: %u", chunks);

	while (chunks--) {
		addr = FUNC0((__be32 *) fw);
		fw += sizeof(u32);
		len = FUNC0((__be32 *) fw);
		fw += sizeof(u32);

		if (len > 300000) {
			FUNC3("firmware chunk too long: %u", len);
			return -EINVAL;
		}
		FUNC2(DEBUG_BOOT, "chunk %d addr 0x%x len %u",
			     chunks, addr, len);
		ret = FUNC1(wl, fw, len, addr);
		if (ret != 0)
			break;
		fw += len;
	}

	return ret;
}