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
struct wl1251 {int* fw; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHIP_ID_B ; 
 size_t CHUNK_SIZE ; 
 int /*<<< orphan*/  DEBUG_BOOT ; 
 int EIO ; 
 int ENOMEM ; 
 int FW_HDR_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int WL1251_PART_DOWN_MEM_SIZE ; 
 int WL1251_PART_DOWN_MEM_START ; 
 int /*<<< orphan*/  WL1251_PART_DOWN_REG_SIZE ; 
 int /*<<< orphan*/  WL1251_PART_DOWN_REG_START ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct wl1251*,int,int*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct wl1251*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wl1251*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct wl1251 *wl)
{
	int addr, chunk_num, partition_limit;
	size_t fw_data_len, len;
	u8 *p, *buf;

	/* whal_FwCtrl_LoadFwImageSm() */

	FUNC3(DEBUG_BOOT, "chip id before fw upload: 0x%x",
		     FUNC6(wl, CHIP_ID_B));

	/* 10.0 check firmware length and set partition */
	fw_data_len =  (wl->fw[4] << 24) | (wl->fw[5] << 16) |
		(wl->fw[6] << 8) | (wl->fw[7]);

	FUNC3(DEBUG_BOOT, "fw_data_len %zu chunk_size %d", fw_data_len,
		CHUNK_SIZE);

	if ((fw_data_len % 4) != 0) {
		FUNC4("firmware length not multiple of four");
		return -EIO;
	}

	buf = FUNC1(CHUNK_SIZE, GFP_KERNEL);
	if (!buf) {
		FUNC4("allocation for firmware upload chunk failed");
		return -ENOMEM;
	}

	FUNC7(wl, WL1251_PART_DOWN_MEM_START,
			     WL1251_PART_DOWN_MEM_SIZE,
			     WL1251_PART_DOWN_REG_START,
			     WL1251_PART_DOWN_REG_SIZE);

	/* 10.1 set partition limit and chunk num */
	chunk_num = 0;
	partition_limit = WL1251_PART_DOWN_MEM_SIZE;

	while (chunk_num < fw_data_len / CHUNK_SIZE) {
		/* 10.2 update partition, if needed */
		addr = WL1251_PART_DOWN_MEM_START +
			(chunk_num + 2) * CHUNK_SIZE;
		if (addr > partition_limit) {
			addr = WL1251_PART_DOWN_MEM_START +
				chunk_num * CHUNK_SIZE;
			partition_limit = chunk_num * CHUNK_SIZE +
				WL1251_PART_DOWN_MEM_SIZE;
			FUNC7(wl,
					     addr,
					     WL1251_PART_DOWN_MEM_SIZE,
					     WL1251_PART_DOWN_REG_START,
					     WL1251_PART_DOWN_REG_SIZE);
		}

		/* 10.3 upload the chunk */
		addr = WL1251_PART_DOWN_MEM_START + chunk_num * CHUNK_SIZE;
		p = wl->fw + FW_HDR_SIZE + chunk_num * CHUNK_SIZE;
		FUNC3(DEBUG_BOOT, "uploading fw chunk 0x%p to 0x%x",
			     p, addr);

		/* need to copy the chunk for dma */
		len = CHUNK_SIZE;
		FUNC2(buf, p, len);
		FUNC5(wl, addr, buf, len);

		chunk_num++;
	}

	/* 10.4 upload the last chunk */
	addr = WL1251_PART_DOWN_MEM_START + chunk_num * CHUNK_SIZE;
	p = wl->fw + FW_HDR_SIZE + chunk_num * CHUNK_SIZE;

	/* need to copy the chunk for dma */
	len = fw_data_len % CHUNK_SIZE;
	FUNC2(buf, p, len);

	FUNC3(DEBUG_BOOT, "uploading fw last chunk (%zu B) 0x%p to 0x%x",
		     len, p, addr);
	FUNC5(wl, addr, buf, len);

	FUNC0(buf);

	return 0;
}